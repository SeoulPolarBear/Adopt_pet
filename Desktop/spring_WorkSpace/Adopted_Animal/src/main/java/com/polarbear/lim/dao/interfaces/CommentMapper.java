package com.polarbear.lim.dao.interfaces;

import java.util.List;

import com.polarbear.lim.dto.Animal;
import com.polarbear.lim.dto.Comment;

public interface CommentMapper {

	public abstract List<Comment> getCommentbyId(Animal animal); 
}
