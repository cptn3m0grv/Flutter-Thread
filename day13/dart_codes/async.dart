void main(){
    alltask();
}

alltask() async{
	task1();
	var d2 = await task2();
	task3(d2);
}

task1(){
	print("my first task is done.....");
}

task2() async{ //writing Future before task2 is optional, since it is added by default with the usage of async.
	var duration = Duration(seconds: 15);
	var result;
	await Future.delayed(duration, (){
		result = 'url';
		print("url to download image");
	});
	print("url to download image");
	return result;
}

task3(String d){
	print("created a button ${d}");
}
