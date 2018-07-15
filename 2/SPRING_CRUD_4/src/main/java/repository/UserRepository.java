package repository;

import model.User;

import java.util.List;

public interface UserRepository {
    public void addUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public void editUser(User user);

    public List<User> getAllUsers();
}
