require 'test_helper'

class WordJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_job = word_jobs(:one)
  end

  test "should get index" do
    get word_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_word_job_url
    assert_response :success
  end

  test "should create word_job" do
    assert_difference('WordJob.count') do
      post word_jobs_url, params: { word_job: { last_word: @word_job.last_word } }
    end

    assert_redirected_to word_job_url(WordJob.last)
  end

  test "should show word_job" do
    get word_job_url(@word_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_job_url(@word_job)
    assert_response :success
  end

  test "should update word_job" do
    patch word_job_url(@word_job), params: { word_job: { last_word: @word_job.last_word } }
    assert_redirected_to word_job_url(@word_job)
  end

  test "should destroy word_job" do
    assert_difference('WordJob.count', -1) do
      delete word_job_url(@word_job)
    end

    assert_redirected_to word_jobs_url
  end
end
