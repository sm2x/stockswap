<%@ page import="org.stockswap.User" %>



			<div class="${hasErrors(bean: userInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="user.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="user.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="user.accountExpired.label" default="Account Expired" /></label>
				<div>
					<bs:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="user.accountLocked.label" default="Account Locked" /></label>
				<div>
					<bs:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="user.email.label" default="Email" /></label>
				<div>
					<g:textField class="form-control" name="email" value="${userInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="user.enabled.label" default="Enabled" /></label>
				<div>
					<bs:checkBox name="enabled" value="${userInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
				<label for="firstName" class="control-label"><g:message code="user.firstName.label" default="First Name" /></label>
				<div>
					<g:textField class="form-control" name="firstName" value="${userInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
				<label for="lastName" class="control-label"><g:message code="user.lastName.label" default="Last Name" /></label>
				<div>
					<g:textField class="form-control" name="lastName" value="${userInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></label>
				<div>
					<bs:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

