<cfoutput> 
<!DOCTYPE>
<html lang="en">
<head>
    <title> Add Expense </title>
</head>
<body>
  <h2>Add Expense</h2>
  <form action"addExpenseAction.cfm" method="post">
    <label>Amount:</label>
    <input type="number" name="amount" step="0.01" required><br>  
    

    <label> Category: </label>
    <select name="category" required>
        <option value="Food">Food</option>
        <option value="Travel">Travel</option>
        <option value="Utilities">Utilities</option>
        <option value="Entertainment">Entertainment</option>
        <option value="Monthly Expenses">Monthly Expenses</option>
    </select><br>

    <label>Descrption:</label>
    <textarea name="description"></textarea><br>


    <label>Due Date:</label>
    <input type="date" name="date" required><br>

    <button type="submit">Add Expense</button>
  </form>
</body>
</html>

</cfoutput>
