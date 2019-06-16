require 'aws-sdk-rekognition'

client = Aws::Rekognition::Client.new(region: 'us-east-1')

resp = client.detect_faces({
  image: {
    s3_object: {
      bucket: "test-rekognition-images",
      name: "kings-day-2018.jpg",
    },
  },
  attributes: ["DEFAULT"],
})

p resp
