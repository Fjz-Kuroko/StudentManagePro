// 查看按钮
function examine(obj) {
    // 打开查看框架
    document.getElementById('examineBlock').style.display = 'block';
    document.getElementById('totalBackground').style.display = 'block';

    // 获取当前行
    var iTr = obj.parentNode.parentNode;

    // 获取当前行中的所有单元格
    var iTds = iTr.getElementsByTagName('td');
    //
    // // 将新增框架中的输入框中内容设为当前行对应的内容
    // document.getElementById('stuId3').value = iTds[2].innerText;
    // document.getElementById('name3').value = iTds[3].innerText;
    // document.getElementById('colg3').value = iTds[4].innerText;
    // document.getElementById('profession3').value = iTds[5].innerText;
    // document.getElementById('grade3').value = iTds[6].innerText;
    // document.getElementById('stuClass3').value = iTds[7].innerText;
    // document.getElementById('age3').value = iTds[8].innerText;


    // 将新增框架中的输入框中内容设为当前行对应的内容
    document.getElementById('stuId3').value = iTds[1].innerText;
    document.getElementById('name3').value = iTds[2].innerText;
    document.getElementById('sex3').value = iTds[3].innerText;
    document.getElementById('age3').value = iTds[4].innerText;
    document.getElementById('colg3').value = iTds[5].innerText;
    document.getElementById('profession3').value = iTds[6].innerText;
    document.getElementById('grade3').value = iTds[7].innerText;
    document.getElementById('stuClass3').value = iTds[8].innerText;
}

// 查看中的取消按钮
function examineCancel() {
    // 关闭修改框架
    document.getElementById('examineBlock').style.display = 'none';
    document.getElementById('totalBackground').style.display = 'none';
}
