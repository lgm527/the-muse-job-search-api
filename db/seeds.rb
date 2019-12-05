require 'rest-client'
require 'json'
require 'pry'

pages = [0, 1, 2, 3, 4]

def createJob(title, description, location, company, url, levels, categories)
  Job.create(title: title, description: description, location: location, company: company, url: url, levels: levels, categories: categories)
end

pages.each do |pageID|
  jobs = RestClient.get("https://www.themuse.com/api/public/jobs?page=#{pageID}")
  allJobs = JSON.parse(jobs)
  allJobs["results"].each do |job|
    createJob(job["name"], job["content"], job["locations"][0]["name"], job["company"]["name"], job["refs"]["landing_page"], job["levels"][0]["name"], job["categories"])
  end
end
