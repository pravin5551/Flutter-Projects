public abstract class Assignment
{
    
    //Assignemnt Track
    protected String assignmentName;
    protected String assignmentLink;
    protected String assignmentPassword;
    protected double noOfQuestions;

    public Assignment() {

    }

    public abstract void setAssignmentName(String assignmentName);
    public abstract void setAssignmentLink(String link);
    public abstract void setAssignmentPassword(String password);
    public abstract void setnoOfQuestions(int noOfQuestions);
    public Assignment(String assignmentName, String assignmentLink, String assignmentPassword, double noOfQuestions) {
        this.assignmentName = assignmentName;
        this.assignmentLink = assignmentLink;
        this.assignmentPassword = assignmentPassword;
        this.noOfQuestions = noOfQuestions;

    }
    
    

    public String getAssignmentName() {
        return assignmentName;
    }
    

    public String getAssignmentLink() {
        return assignmentLink;
    }

    public String getAssignmentPassword() {
        return assignmentPassword;
    }

    public double getNoOfQuestions() {
        return noOfQuestions;
    }

    public void setNoOfQuestions(double noOfQuestions) {
        this.noOfQuestions = noOfQuestions;
    }
}
