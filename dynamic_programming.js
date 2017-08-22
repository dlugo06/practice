function climbStairs(n){
    function traverse(n){
        if (n === 0){
            return 1;
        } else if (n === 1){
            return 1;
        } else if (n === 2){
            return 2;
        }

        return traverse(n - 1) + traverse(n - 2) + traverse(n - 3);
    }
    return traverse(n);
}



function climbStairsMemo(n){
    let cache = {};
    function traverse(n){
        if (cache[n] !== undefined){
            return cache[n];
        } else if (n === 0){
            return 1;
        } else if (n === 1){
            return 1;
        } else if (n === 2){
            return 2;
        }

        cache[n] = traverse(n - 1) + traverse(n - 2) + traverse(n - 3);
        return cache[n];
    }
    return traverse(n);
}



console.time("Recursion: ");
console.log(climbStairs(20));
console.timeEnd("Recursion: ");


console.time("Memo: ");
console.log(climbStairsMemo(20));
console.timeEnd("Memo: ");





function climbStairsTab(n){
    let result = [1,1,2];

    for (let i = 3; i < n + 1; i++){
        result.push(result[i - 1] + result[i - 2] + result[i - 3]);
    }

    return result[n];
}



console.time("Tab: ");
console.log(climbStairsTab(20));
console.timeEnd("Tab: ");
