require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { assignedTo: @task.assignedTo, clientName: @task.clientName, dueDate: @task.dueDate, priority: @task.priority, projectID: @task.projectID, projectName: @task.projectName, startDate: @task.startDate, status: @task.status, taskCreator: @task.taskCreator, taskDescription: @task.taskDescription, taskName: @task.taskName, taskeeID: @task.taskeeID }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { assignedTo: @task.assignedTo, clientName: @task.clientName, dueDate: @task.dueDate, priority: @task.priority, projectID: @task.projectID, projectName: @task.projectName, startDate: @task.startDate, status: @task.status, taskCreator: @task.taskCreator, taskDescription: @task.taskDescription, taskName: @task.taskName, taskeeID: @task.taskeeID }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
