#!/bin/sh

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ssh-vogsphere.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsanchez <gsanchez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/30 16:35:25 by gsanchez          #+#    #+#              #
#    Updated: 2020/06/30 16:35:27 by gsanchez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "Generating ssh-keygen.."
ssh-keygen
echo "Evaluating..."
eval "$(ssh-agent -s)"
echo "Adding "
ssh-add -K ~/.ssh/id_rsa.pub
