%define		name		molly-guard
%define		version		0.0.1
%define		release		0%{?dist}



Name:		%{name}
Version:	%{version}
Release:	%{version}
Summary:	Trys to block you from accidentally shutting down or rebooting Linux servers

License:	GPLv3
URL:		https://github.com/MarkCotch/molly-guard
Source0:	%{name}-%{version}.tar.gz

Requires:	

%description
Trys to block you from accidentally shutting down or rebooting Linux servers

%prep
%setup -q

%install
make install DESTDIR=%{buildroot}


%files
%doc



%changelog

