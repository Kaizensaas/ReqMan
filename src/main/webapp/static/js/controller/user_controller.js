App.controller('personManagerController', function($scope, $http) {
    // var urlBase = "http://localhost:8084/ENPOC";
    //var urlBase = location.protocol + '//' + location.hostname + (location.port ? ':' + location.port : '') + '/CCPOC';
    var urlBase = location.protocol + '//' + location.hostname + (location.port ? ':' + location.port : '');

    //get all persons and display initially
    $scope.getAllPersons = function() {
        $http.get(urlBase + '/person/user').
                success(function(data) {
                    $scope.persons = data;
                    console.log('person data' + JSON.stringify($scope.persons));
                });
    }
    $scope.getAllPersons();
});

