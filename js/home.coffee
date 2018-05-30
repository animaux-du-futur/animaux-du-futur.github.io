---
---

angular.module 'adf.home', 'adf.manifesto', [
  'ng'
]

.controller 'randomArtController',
($scope, $http) ->
  $http.get 'https://api.github.com/repos/animaux-du-futur/animaux-du-futur.github.io/contents/img/home'
  .then (response) ->
    image = response.data[Math.floor response.data.length * Math.random()]
    $scope.imageSrc = window.encodeURIComponent image.path
    $scope.imageLegend = image.name.split('.')[0]
