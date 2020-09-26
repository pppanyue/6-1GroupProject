function loadChart(){
	//使用Echart工具作为表格，初始化Echart实例
	var dailyChart = echarts.init(document.getElementById("schedule_chart"));
	var option = {
		title: {
			text: 'LemonP的每日大约时间分配图',
			subtext: '疫情期（h）',
			left: 'center'
		},
		tooltip: {
			trigger: 'item',
			formatter: '{b}<br/>{c}h ({d}%)'
		},
		legend: {
			type: '',
			orient: 'vertical',
			right: 0,
			top: 'top',
			bottom: '100%',
			textStyle: {
				lineHeight: 40,
				fontSize: 20
			}
			
		},
		series: [
			{
				name: '姓名',
				type: 'pie',
				radius: '40%',
				center: ['50%', '40%'],
				hoverOffset: 20,
				avoidLabelOverlap: true,
				data: [
					{value:10, name:'睡觉'},
					{value:1.5, name:'进餐'},
					{value:0.5, name:'活动'},
					{value:0.5, name:'家务'},
					{value:0.75, name:'了解资讯'},
					{value:3.5, name:'课程学习'},
					{value:1.5, name:'课外学习'},
					{value:0.75, name:'个人卫生'},
					{value:4.5, name:'休闲娱乐'},
					{value:0.5, name:'灵活时间'},
					
					],
				label: {
					fontSize: 18,
					fontWeight: 'bold'
				},
				labelLine: {
					length: 80,
					length2: 30
				},
				emphasis: {
					itemStyle: {
						shadowBlur: 10,
						shadowOffsetX: 10,
						shadowColor: 'rgba(0, 0, 0, 0.5)'
					}
				}
			}
		]
	};
	dailyChart.setOption(option);
	
}
