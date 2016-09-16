<%-- 
    Document   : person.jsp
    Created on : Aug 13, 2016, 8:04:03 PM
    Author     : Hardik
--%>
<center>
    <div class="generic-container" >
        <div class="panel panel-default">
            <div class="panel-heading"><span class="lead">Person Form</span></div>
            
        </div>    
        <div class="panel panel-default" >
            <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Persons </span></div>
            <div class="tablecontainer">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>BirtDate</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody style="text-align:left;">
                        <tr ng-repeat="u in persons">
                            <td><span ng-bind="u.id"></span></td>
                            <td><span ng-bind="u.fullname"></span></td>
                            <td><span ng-bind="u.birthdate"></span></td>
                            <td><span ng-bind="u.amount"></span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</center>       
