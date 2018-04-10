/**
 * @param {string} s
 * @param {string} p
 * @return {boolean}
 */
var isMatch = function(s, p) {


    if (p.length === 0) {
       if (s.length === 0){
           return true;
       }else {
         return false;
       }


   }

   if (p.length === 1) {
       if (s.length >0 && (p.charAt(0) === s.charAt(0) || p.charAt(0) === '.')) {
           return isMatch(s.substring(1),p.substring(1));
       }else {
           return false;
       }
   }

   if (p.length >= 2) {
       if (p.charAt(1) !== '*') {
           if (s.length >0 && (p.charAt(0) === s.charAt(0) || p.charAt(0) === '.')) {
               return isMatch(s.substring(1),p.substring(1));
           }else {
               return false;
           }
       }else {
           while (s.length >0 && (p.charAt(0) === s.charAt(0) || p.charAt(0) === '.')) {
               if (isMatch(s,p.substring(2))){
                   return true;
               }else {
                   s = s.substring(1);
               }

           }

           return isMatch(s,p.substring(2));

       }
   }

};

var test = isMatch('aa','a');
console.log(test);