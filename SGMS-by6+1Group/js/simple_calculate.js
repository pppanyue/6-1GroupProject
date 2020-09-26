function calculate(){
	//获取输入框的文本及计算符的选择
	var leftValue = document.getElementById('txt_oprd1').value;
	var rightValue = document.getElementById('txt_oprd2').value;
	var operator = document.getElementById('operator').value;
	//正则表达式模板，用于判断输入合法性（浮点数）
	var pattern = /((-?[1-9]\d*)|0)(\.\d*)?$/
	if(leftValue == '' || rightValue == '' ){
		alert('请输入您要计算的数值！');
		return;
	}
	if(!(pattern.test(leftValue) && pattern.test(rightValue))){
		alert('请输入合法的数值！');
		return;
	}
	
	//转化为数字类型
	leftValue = Number(leftValue)
	rightValue = Number(rightValue)
	if(operator == 'add'){
		result = leftValue + rightValue
		alert('加的结果是：' + result)
	}
	if(operator == 'sub'){
		result = leftValue - rightValue
		alert('减的结果是：' + result)
	}
	if(operator == 'mul'){
		result = leftValue * rightValue
		alert('乘的结果是：' + result)
	}
	if(operator == 'div'){
		result = leftValue / rightValue
		alert('除以的结果是：' + result)
	}
	document.getElementById('txt_res').value = result
}