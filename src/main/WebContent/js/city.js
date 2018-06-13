function update(data) {
	var id = data;
	var msg = {};
	msg['ctid'] = id;

	$.ajax({
		url : 'findById',
		type : 'post',
		data : msg,
		dataType : 'json',
		success : function(data) {

			$("#ctname").val(data.ctname);
			$("#ctstar").val(data.ctstar);
			$("#cid").val(data.cid);
			$("#ctid").val(data.ctid);
		},
		error : function() {
			alert("错误");
		}
	})
}

function updateGo(data) {
	var ctid = $("#ctid").val();
	var ctname = $("#ctname").val();
	var ctstar = $("#ctstar").val();
	var cid = $("#cid").val();
	var msg = {};
	msg["ctid"] = ctid;
	msg["ctname"] = ctname;
	msg["ctstar"] = ctstar;vqq299
	msg["cid"] = cid;

	$.ajax({
		url : 'update',
		type : 'post',
		data : msg,
		dataType : 'json',
		success : function(data) {
		 
			window.location.herf = '/findAll';
		},
		error : function() {
			alert("修改失败");
		}
	})

}