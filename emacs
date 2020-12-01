(put 'downcase-region 'disabled nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-11"))
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq default-directory "c://Users/tball401/")
;;Sets the build path
(setq buildPath "c://Users/tball401/Documents/OpenGL_proj/OpenGL.sln")
;;Print the build path
(defun printBuildPath()
  (interactive)
  (message (concat "Current Build Path: " buildPath)))
(global-set-key "\C-cp" 'printBuildPath)
;;Change the Build Path
(defun setBuildPath(path)
  (interactive "p")
  (setq buildPath path)
  (message (concat "Setting Build Path: " buildPath)))
(global-set-key "\C-cs" 'setBuildPath)
;;Builds Visual Studio Project 
(defun Build ()
  "Building OpenGL Project"
  (interactive)
  (shell-command (concat "MSBuild " buildPath))
  (message "Building Project"))
(global-set-key "\C-cm" 'Build)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
