package com.example.app.domain;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class User/* implements UserDetails */{
	
	private int id;
	@NotBlank
	@Email(message="※ メールアドレスが正しく入力されていません")
	private String loginId;
	private String loginPass;
	private List<String> roles;
	private UserBasicDetail userBD;
	private UserRequiredDetail userRD;
	private UserFreeDetail userFD;
	private UserText userT;
	
	/*
	 * @Override public Collection<? extends GrantedAuthority> getAuthorities() {
	 * return roles.stream().map(role -> new SimpleGrantedAuthority(role)).toList();
	 * }
	 * 
	 * @Override public String getPassword() { return loginPass; }
	 * 
	 * @Override public String getUsername() { return loginId; }
	 * 
	 * @Override public boolean isAccountNonExpired() { // TODO 自動生成されたメソッド・スタブ
	 * return true; }
	 * 
	 * @Override public boolean isAccountNonLocked() { // TODO 自動生成されたメソッド・スタブ
	 * return true; }
	 * 
	 * @Override public boolean isCredentialsNonExpired() { // TODO 自動生成されたメソッド・スタブ
	 * return true; }
	 * 
	 * @Override public boolean isEnabled() { // TODO 自動生成されたメソッド・スタブ return true; }
	 */
}
