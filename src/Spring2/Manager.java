package Spring2;

public class Manager {
    Long id;
    String name;
    String description;
    String deadlineDate;
    String status;
    public Manager(){}

    public Manager(Long id, String name, String description, String deadlineDate, String status) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.status=status;
    }

    public String getStatus() {
        return status;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }
}
