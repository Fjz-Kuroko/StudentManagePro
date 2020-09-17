//重新把序号排列
function range() {
    // var list = $(".col2");
    // var flag = 1;
    // for (var i = 1; i < list.length; i++) {
    //     list[i].innerText = flag;
    //     flag++;
    // }

    var iTable = document.getElementById('myTable');
    var iTrs = iTable.getElementsByTagName('tr');
    for (var i=1; i<iTrs.length; i++) {
        if (i % 2 != 0)
            iTrs[i].className = 'mainTbodyTr1';
        else
            iTrs[i].className = 'mainTbodyTr2';
        var sort = iTrs[i].getElementsByTagName('td')[0];
        sort.innerText = i;
    }

    var nums = iTrs.length - 1;
    document.getElementById('nums').innerText = nums;
    nums = parseInt(nums);
    var pageSum = Math.ceil(nums / 10);
    var pageNum = document.getElementById('pageNum').innerText;
    pageNum = parseInt(pageNum);

    if (pageNum <= pageSum) {
        for (var i=(pageNum-1)*10+1; i<pageNum*10+1; i++) {
            iTable.rows[i].style.display = 'table-row';
        }
        for (var i=1; i<(pageNum-1)*10+1; i++) {
            iTable.rows[i].style.display = 'none';
        }
        for (var i=pageNum*10+1; i<nums+1; i++) {
            iTable.rows[i].style.display = 'none';
        }
    }
    if (pageNum > pageSum) {
        for (var i=(pageNum-2)*10+1; i<nums+1; i++) {
            iTable.rows[i].style.display = 'table-row';
        }
        for (var i=1; i<(pageNum-2)*10+1; i++) {
            iTable.rows[i].style.display = 'none';
        }
        document.getElementById('pageNum').innerText = pageNum - 1;
    }
}