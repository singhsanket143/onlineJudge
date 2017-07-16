json.extract! question, :id, :content, :constraints, :testcases, :marks, :difficulty, :created_at, :updated_at
json.url question_url(question, format: :json)
