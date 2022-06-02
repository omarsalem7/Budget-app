module CategoriesHelper
  def total_amount_helper(expenses)
    expenses.reduce(0) { |sum, expense| sum + expense.amount }
  end
end
