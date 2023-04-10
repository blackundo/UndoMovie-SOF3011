package edu.poly.asmjava4final.dto;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class MovieDTO extends AbstractDTO<MovieDTO>{
    private String title;
    private String description;

    private Date date;
    private Integer viewCount;
    private Integer likeCount;
    private Set<CategoryDTO> categories = new HashSet<CategoryDTO>();
    private Set<UserDTO> users = new HashSet<UserDTO>();
    private String[] idsCategory;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }



    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    public Integer getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }



    public Set<CategoryDTO> getCategories() {
        return categories;
    }

    public void setCategories(Set<CategoryDTO> categories) {
        this.categories = categories;
    }

    public Set<UserDTO> getUsers() {
        return users;
    }

    public void setUsers(Set<UserDTO> users) {
        this.users = users;
    }


    public String[] getIdsCategory() {
        return idsCategory;
    }

    public void setIdsCategory(String[] idsCategory) {
        this.idsCategory = idsCategory;
    }



    @Override
    public String toString() {
        return "MovieDTO [title=" + title + ", description=" + description + ", date="
                + date + ", viewCount=" + viewCount + ", likeCount=" + likeCount + ", categories=" + categories + ", users=" + users
                + Arrays.toString(idsCategory) + "]";
    }
}
