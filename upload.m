function upload(firstname)

% Prep Work:
%   >> unzip https://github.com/cykhung/svn/archive/refs/heads/master.zip c:\khung\svn
%   >> addpath(genpath('c:\khung'))
%   >> svn co https://github.com/kevintraining/classfiles.git c:\khung\classfiles
%
% After class is finished, zip up all files from c:\class into john.zip and
% upload john.zip to github:
%   >> addpath(genpath('c:\khung'))
%   >> upload john

zipfilename = [firstname, '.zip'];
x           = fullfile(fileparts(mfilename('fullpath')), [firstname, '.zip']);
zip(x, 'c:\class');
svn('add --force', x);
svn('ci', x, '-m ""', ...
    '--username kevintraining --password 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');

fprintf('To download %s:\n', zipfilename)
fprintf('(1) Go to https://github.com/kevintraining/classfiles/blob/main/%s\n', zipfilename);
fprintf('(2) Click the Download button in the middle of the page.\n');
fprintf('\n');

end

