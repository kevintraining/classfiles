function upload(firstname)

% Zip up all files from c:\class into [firstname].zip.
% Upload [firstname].zip into github.

addpath c:\svn\svn-master
zipfilename = [firstname, '.zip'];
x = sprintf('c:\\github\\trunk\\%s', zipfilename);
zip(x, 'c:\class');
svn('add --force', x);
svn('ci', x, '-m ""');

fprintf('Download %s from ', zipfilename);
fprintf('https://github.com/kevintraining/classfiles/blob/main/%s\n\n', ...
    zipfilename);

end

