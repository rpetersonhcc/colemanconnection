var userModel = angular.module('userModel', []);
userModel.controller('usersCtrl', function($scope, $http) {
  $http.get('./src/demo/demo-users.php').
  	success(function(data){
  		$scope.users = data;
  	});
  
});


var studentModel = angular.module('studentModel', [])
studentModel.controller('studentsCtrl', function($scope, $http) {
    
  $scope.showData = function(){
        $scope.curPage = 0;
        $scope.pageSize = 15;

        $http.get('./src/demo/demo-students.php').
        success(function(data){
          $scope.students = data;
        });

        $scope.numberOfPages = function(){
          return Math.ceil($scope.data.length / $scope.pageSize);
        }

  }  
  
  
});







