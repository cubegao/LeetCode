/**
 * @param {number[]} candidates
 * @param {number} target
 * @return {number[][]}
 */
var combinationSum = function(candidates, target) {

    candidates = candidates.sort((a,b) => a-b);
    var result = [];
    dfs(candidates,target,0,result,[]);
    return result;
};


var dfs = function (candidates, target, s, result, temp) {

    if (target === 0){
        result.push([...temp]);//copy
        return;
    }

    for (var i = s; i < candidates.length; ++i) {
        if (target < candidates[i]) break;
        temp.push(candidates[i]);
        dfs(candidates,target-candidates[i],i,result,temp);
        temp.pop();
        console.log(temp);
    }
}

combinationSum([2,3,6,7],7);