package com.team1.domain;

import java.util.Date;

import com.team1.util.ToString;

public class Note extends ToString {

	private String noteId;
	private int noteNo;
	private String noteTitle;
	private String noteContent;
	private Date noteDate;

	public Note() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the noteId
	 */
	public String getNoteId() {
		return noteId;
	}

	/**
	 * @param value the noteId to set
	 */
	public Note setNoteId(final String value) {
		noteId = value;
		return this;
	}

	/**
	 * @return the noteNo
	 */
	public int getNoteNo() {
		return noteNo;
	}

	/**
	 * @param value the noteNo to set
	 */
	public Note setNoteNo(final int value) {
		noteNo = value;
		return this;
	}

	/**
	 * @return the noteTitle
	 */
	public String getNoteTitle() {
		return noteTitle;
	}

	/**
	 * @param value the noteTitle to set
	 */
	public Note setNoteTitle(final String value) {
		noteTitle = value;
		return this;
	}

	/**
	 * @return the noteContent
	 */
	public String getNoteContent() {
		return noteContent;
	}

	/**
	 * @param value the noteContent to set
	 */
	public Note setNoteContent(final String value) {
		noteContent = value;
		return this;
	}

	/**
	 * @return the noteDate
	 */
	public Date getNoteDate() {
		return noteDate;
	}

	/**
	 * @param value the noteDate to set
	 */
	public Note setNoteDate(final Date value) {
		noteDate = value;
		return this;
	}

}
