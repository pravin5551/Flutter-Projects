public class Spartans_Assignments extends Assignment
{
    protected String batchName ;

    public Spartans_Assignments(String assignmentName, String assignmentLink, String assignmentPassword, double noOfQuestions) {
        super();
        System.out.println("The Assignment Name is" + assignmentName);
        System.out.println("The Assignment Link is " + assignmentLink);
        System.out.println("The Assignment Password is " + assignmentPassword);
        System.out.println("Total number of questions are" + noOfQuestions);
    }

    @Override
    public void setnoOfQuestions(int noOfQuestions) {

    }

    @Override
    public void setAssignmentPassword(String password) {

    }

    @Override
    public void setAssignmentName(String assignmentName) {

    }

    @Override
    public void setAssignmentLink(String link) {

    }

    @Override
    public void setNoOfQuestions(double noOfQuestions) {

    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }
    public void display(String display)
    {
        System.out.println(display);
    }
}
