/**
 * @param {number[]} candidates
 * @param {number} target
 * @return {number[][]}
 */
var combinationSum2 = function(candidates, target) {

    candidates = candidates.sort((a,b) => a-b);
    var result = [];
    dfs(candidates,target,0,result,[]);
    console.log(result);
    return result;
};


var dfs = function (candidates, target, s, result, temp) {

    if (target === 0){
        result.push([...temp]);//copy
        return;
    }

    for (var i = s; i < candidates.length; ++i) {
        if (i > s && candidates[i] === candidates[i-1]) continue;// 同一层次不能出现相同元素
        if (target < candidates[i]) break;//剪枝
        temp.push(candidates[i]);
        dfs(candidates,target-candidates[i],i+1,result,temp);
        temp.pop();
    }
};

combinationSum2([10,1,2,7,6,1,5],8)