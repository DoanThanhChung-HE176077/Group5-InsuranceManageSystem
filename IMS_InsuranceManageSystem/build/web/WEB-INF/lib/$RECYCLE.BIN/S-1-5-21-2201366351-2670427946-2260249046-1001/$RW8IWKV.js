const arr = document.querySelector("#inputNum");
const kq = document.querySelector("#kq");

const arr1 = (arr) => {
    let a = s.split(/\s+/);
    return a;
}

const max = (arr1) => {
    let maxNum=0;
    for (let i=0; i<=arr1.length; i++) {
        if (arr1[i] >= arr1[i+1]) {
            maxNum = arr1[i];
        }
    }
    return maxNum;
}

const show = (arr) => {
    kq.innerHTML='';
    const h5 = document.createElement('h5');
    h5.textContent='max:';
    let maxNum = max(arr);
    root.appendChild(h5);
    root.appendChild(maxNum);
    

}

const cal = () => {
    show(arr);
}

