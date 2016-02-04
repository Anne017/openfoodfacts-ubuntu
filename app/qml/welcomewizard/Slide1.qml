/*
 * Copyright 2015 Podbird Team
 *
 * This file is part of Podbird.
 *
 * Podbird is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * Podbird is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

// Slide 1
Component {
    id: slide1
    Item {
        id: slide1Container

        Image {
            anchors {
                top: parent.top
                bottom: introductionText.top
                bottomMargin: units.gu(6)
                horizontalCenter: parent.horizontalCenter
            }
            source: Qt.resolvedUrl("image/OpenFoodFacts.png");
            fillMode: Image.PreserveAspectFit
            antialiasing: true
        }

        Label {
            id: introductionText
            text: i18n.tr("Welcome to Open Food Facts")
            fontSize: "x-large"
            height: contentHeight
            anchors.centerIn: parent
        }

        Label {
            id: bodyText
            text: i18n.tr("An application to learn more about food and eating healthier, it lists information about food products worldwide.")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: units.gu(1)
            anchors.top: introductionText.bottom
            anchors.topMargin: units.gu(4)
            anchors.bottom: swipeText.top
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
        }

        Label {
            id: swipeText
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: units.gu(1)
            anchors.bottom: parent.bottom
            color: "grey"
            fontSize: "small"
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            text: i18n.tr("Swipe to move between pages")

        }
    }
}
