https://codefights.com/interview-practice/task/pMvymcahZ8dY4g75q/solutions/tqqAtKThERssrf2LE


function firstDuplicate(a) {

    let myHash = {};
    for (let i = 0; i < a.length; i++){
        if(!myHash[a[i]]){
        myHash[a[i]] = 0;
        }
        myHash[a[i]]++;
        if (myHash[a[i]] == 2) {
        return a[i];
      }
    }
    return -1;
}
