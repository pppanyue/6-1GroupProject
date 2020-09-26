var map;
var mapleIcon;

function mapInit(){
    // GL版命名空间为BMapGL
    // 按住鼠标右键，修改倾斜角和角度
	mapleIcon = new BMap.Icon("img/maple_mark_edited.png", new BMap.Size(25,24));
	map = new BMap.Map("baidumap");
	document.getElementById("sub_method").disabled = true;
	document.getElementById("method").selectedIndex = 0;
	map.centerAndZoom(new BMap.Point(114.336264,30.551147), 80);  // 初始化地图,设置中心点坐标和地图级别,坐标经纬度为LemonP的家附近。
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	//map.setCurrentCity("武汉");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
}

//子选项修改函数，随主选项改变而改变
function changeMethod(){
	var method = document.getElementById("method").value;
	var subMethodSelect = document.getElementById("sub_method");
	var elem = document.createElement('option');
	
	while(subMethodSelect.length > 0){
		subMethodSelect.remove(subMethodSelect.length - 1)
	}
	if(method == "walk"){
		subMethodSelect.disabled = true
		
		elem = document.createElement('option')
		elem.text = "不可用"
		elem.value = "disable"
		subMethodSelect.add(elem, null)
	}
	if(method == "bus"){
		subMethodSelect.disabled = false
		
		elem = document.createElement('option')
		elem.text = "最少时间"
		elem.value = "least_time"
		subMethodSelect.add(elem, null)
		elem = document.createElement('option')
		elem.text = "最少换乘"
		elem.value = "least_transfer"
		subMethodSelect.add(elem, null)
		elem = document.createElement('option')
		elem.text = "最少步行"
		elem.value = "least_walking"
		subMethodSelect.add(elem, null)
		elem = document.createElement('option')
		elem.text = "不乘地铁"
		elem.value = "avoid_subways"
		subMethodSelect.add(elem, null)
	}
	if(method == "drive"){
		subMethodSelect.disabled = false
		
		elem = document.createElement('option')
		elem.text = "最少时间"
		elem.value = "least_time"
		subMethodSelect.add(elem, null)
		elem = document.createElement('option')
		elem.text = "最短距离"
		elem.value = "least_distance"
		subMethodSelect.add(elem, null)
		elem = document.createElement('option')
		elem.text = "避开高速"
		elem.value = "avoid_highways"
		subMethodSelect.add(elem, null)
	}
}

//以步行模式查询函数
function walkModeMap(start, end){
	map.clearOverlays();
	var walking = new BMap.WalkingRoute(map, {renderOptions:{map: map, panel: "result", autoViewport: true}});
	walking.search(start, end);
}

//以公交模式查询函数
function busModeMap(start, end, sub_method){
	map.clearOverlays();
	var transit = new BMap.TransitRoute(map, {renderOptions: {map: map, panel: "result", autoViewport: true}});
	if(sub_method == "least_time"){
		transit.setPolicy(BMAP_TRANSIT_POLICY_LEAST_TIME);
	}
	if(sub_method == "least_transfer"){
		transit.setPolicy(BMAP_TRANSIT_POLICY_LEAST_TRANSFER);
	}
	if(sub_method == "least_walking"){
		transit.setPolicy(BMAP_TRANSIT_POLICY_LEAST_WALKING);
	}
	if(sub_method == "avoid_subways"){
		transit.setPolicy(BMAP_TRANSIT_POLICY_AVOID_SUBWAYS);
	}
	transit.search(start, end);
}

//以驾车模式查询函数
function driveModeMap(start, end, sub_method){
	map.clearOverlays();
	var driving = new BMap.DrivingRoute(map, {renderOptions:{map: map, panel: "result", autoViewport: true}});
	if(sub_method == "least_time"){
		driving.setPolicy(BMAP_DRIVING_POLICY_LEAST_TIME);
	}
	if(sub_method == "least_distance"){
		driving.setPolicy(BMAP_DRIVING_POLICY_LEAST_DISTANCE);
	}
	if(sub_method == "avoid_highways"){
		driving.setPolicy(BMAP_DRIVING_POLICY_AVOID_HIGHWAYS);
	}

	driving.search(start, end);
}

//地图显示函数
function showMap(){
	
	var method = document.getElementById("method").value;
	var subMethod = document.getElementById("sub_method").value;
	var startPos = document.getElementById("txt_start").value;
	var endPos = document.getElementById("txt_end").value;
	
	if(method == "walk"){
		walkModeMap(startPos, endPos);
	}
	if(method == "bus"){
		busModeMap(startPos, endPos, subMethod);
	}
	if(method == "drive"){
		driveModeMap(startPos, endPos, subMethod);
	}
}

//增加标记点函数
function addMarker(point){
	  var marker = new BMap.Marker(point, {icon:mapleIcon});
	  map.addOverlay(marker);
	}

//增加标签
function createLable(point, word){
	var marker = new BMap.Marker(point, {icon:mapleIcon});  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中
	var label = new BMap.Label(word,{offset:new BMap.Size(20,-10)});
	marker.setLabel(label);
}

//显示标记点图文信息函数
function showPointInfo(point, title, detail, imgDirectory){
	var sContent =
	"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>" + title + "</h4>" + 
	"<img style='float:right;margin:4px' id='imgDemo' src=" + imgDirectory + " width='139' height='104' title='" + title + "'/>" + 
	"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>" + detail + "</p>" + 
	"</div>";
	var marker = new BMap.Marker(point, {icon:mapleIcon});
	var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
	map.centerAndZoom(point, 15);
	map.addOverlay(marker);
	marker.addEventListener("click", function(){          
	   this.openInfoWindow(infoWindow);
	   //图片加载完毕重绘infowindow
	   document.getElementById('imgDemo').onload = function (){
		   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
	   }
	});
}

//显示求学历程坐标及图文信息
function showExperience(){
	map.clearOverlays()
	var kindergarten = new BMap.Point(112.257171,30.320726);
	var primaryschool = new BMap.Point(114.349829,30.554881);
	var juniorschool = new BMap.Point(114.334878,30.543302);
	var seniorschool = new BMap.Point(114.352807,30.555396);
	var university1 = new BMap.Point(114.590649,30.652282);
	var university2 = new BMap.Point(114.340713,30.58292);
	var futureuniversity = new BMap.Point(114.419825,30.518659);
	
	map.centerAndZoom(seniorschool, 13);
	
	var pois = [
		kindergarten,
		primaryschool,
		juniorschool,
		seniorschool,
		university1,
		university2,
		futureuniversity
	];
	
	for(var i = 0; i < pois.length; i++)
	{
		addMarker(pois[i])
	}

	createLable(kindergarten, "幼儿园：荆州市晴川艺术幼儿园")
	showPointInfo(kindergarten, "荆州市晴川艺术幼儿园", "位于荆州市中山公园内，是LemonP童年与外公外婆、老师、小伙伴们的回忆，现已被拆除。<br/><br/>右为现荆州市中山公园一角", "img/kindergarten.jpg")
	createLable(primaryschool, "小学：武汉市水果湖第二小学")
	showPointInfo(primaryschool, "武汉市水果湖第二小学", "位于省政府、汉街中间，一所配置、环境很好的学校。<br/><br/>右为水果湖第二小学正门", "img/primaryschool.png")
	createLable(juniorschool, "初中：武汉市武珞路中学")
	showPointInfo(juniorschool, "武汉市武珞路中学", "位于中商广场、武汉小学、付家坡长途客运汽车站附近，一所教学质量好的学校。<br/><br/>右为LemonP就读的武珞路中学分部", "img/juniorschool.png")
	createLable(seniorschool, "高中：湖北省水果湖高级中学")
	showPointInfo(seniorschool, "湖北省水果湖高级中学", "位于LemonP的小学旁，一所省级中学，有着同学日常、高考奋斗的回忆。<br/><br/>右为分数出来后，LemonP告别老师，最后一次放学的正门场景。", "img/seniorschool.jpg")
	createLable(university1, "大学：湖北大学阳逻分校")
	showPointInfo(university1, "湖北大学阳逻分校", "位于阳逻工业区，于大学第二学期离开返回本校。<br/><br/>右为阳逻分校校园一景", "img/university1.jpg")
	createLable(university2, "大学：湖北大学本校")
	showPointInfo(university2, "湖北大学本校", "位于沙湖之滨，是LemonP目前就读的学校。<br/><br/>右为湖北大学本校一景", "img/university2.png")
	createLable(futureuniversity, "未来大学：华中科技大学")
	showPointInfo(futureuniversity, "华中科技大学", "位于光谷，是国家优秀的大学，是LemonP目前的考研目标。<br/><br/>右为华中科技大学正门", "img/futureuniversity.png")
	
	if(document.getElementById("line_mode").value == "line"){
		var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
		    scale: 1,//图标缩放大小
		    strokeColor:'black',//设置矢量图标的线填充颜色
		    strokeWeight: '1.5',//设置线宽
		});
		var icons = new BMap.IconSequence(sy, '10', '100');
		// 创建polyline对象
		for(var i = 0; i < pois.length; i++)
		{
			map.addOverlay(new BMap.Polyline(pois, {
				enableEditing: false,//是否启用线编辑，默认为false
				enableClicking: true,//是否响应点击事件，默认为true
				icons:[icons],
				strokeWeight:'10',//折线的宽度，以像素为单位
				strokeOpacity: 0.2,//折线的透明度，取值范围0 - 1
				strokeColor:"#E6E6FA" //折线颜色
			}));
		}
	}
	if(document.getElementById("line_mode").value == "curve"){
		map.addOverlay(new BMapLib.CurveLine(pois, {strokeColor:"blue", strokeWeight:3, strokeOpacity:0.5}));
	}
}

//显示LemonP家的距校距离折线图
function showHomeToSchoolChart(){
	
	map.clearOverlays()
	showExperience()
	//显示LemonP的家
	var home = new BMap.Point(114.336264,30.551147);
	var marker = new BMap.Marker(home, {icon:mapleIcon});
	map.addOverlay(marker);              // 将标注添加到地图中
	var label = new BMap.Label("武昌区民主路知音花园（单击显示）",{offset:new BMap.Size(20,-10)});
	marker.setLabel(label);
	
	map.centerAndZoom(home, 18);

	var infoContent = "<iframe width='800px' height='400px' frameborder='no' border='0' marginwidth='0' marginHeight='0' src='EchartWindow.html'></iframe>"
	var infoWindow = new BMap.InfoWindow(infoContent);  // 创建信息窗口对象
	
	marker.addEventListener("click", function(){
	   this.openInfoWindow(infoWindow);
	});
}

//初始化折线图
function chartInit(){
	//使用Echart工具作为表格，初始化Echart实例
	var distanceChart = echarts.init(document.getElementById("distance_chart"));
	
	var option = {
		tooltip: {
			trigger: 'item',
			formatter: '{b}<br/>驾车距LemonP家{c}km'
		},
		xAxis: {
			type: 'category',
			data: ['Prima school', 'Juni school', 'Seni school', 'Uni1', 'Uni2', 'Future uni1'],
			name: 'Schools',
		},
		yAxis: {
			type: 'value',
			name: 'km'
		},
		series: [{
			data: [1.4, 0.933, 1.6, 26.8, 3.6, 8.8],
			type: 'line'
		}]
	};
	distanceChart.setOption(option)
}