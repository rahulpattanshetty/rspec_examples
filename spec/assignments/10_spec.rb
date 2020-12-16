# 1)Create a double with the name "Database Connection". 
#   The double should have a method called connect that returns the value true.
#   The double also have a method called disconnect that returns the value "Goodbye".
#   The double's methods should be assigned in the initial invocation of the double method.
#   Write two expectations, one for connect and one for disconnect, that confirms the return value of each.
#   Assign the double to the variable db.

# 2)Create a double with the name "File System". Assign the double to the variable fs.
#   Using the allow method, give the double a read method that returns the value "Romeo and Juliet".
#   Using the allow method, give the double a write method that returns the value false.

RSpec.describe "double" do
  it "tests the student's knowledge of the course's context" do
    db = double("Database Connection", connect: true, disconnect: "Goodbye")
    expect(db.connect).to eql(true)
    expect(db.disconnect).to eq("Goodbye")

    fs = double("File System")
    allow(fs).to receive(:read).and_return("Romeo and Juliet")
    allow(fs).to receive_messages(write: false)
    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to eq(false)
  end
end