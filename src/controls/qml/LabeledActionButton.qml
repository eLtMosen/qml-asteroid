/*
 * Copyright (C) 2023 - Timo Könnecke <github.com/eLtMosen>
 * Copyright (C) 2022 - Ed Beroset <github.com/beroset>
 * Copyright (C) 2020 - Darrel Griët <idanlcontact@gmail.com>
 * Copyright (C) 2015 - Florent Revest <revestflo@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.9
import org.asteroid.controls 1.0

Item {
    // alias to recieve string icon.name
    property alias icon: icon.name
    // alias to recieve string label.text
    property alias text: label.text
    // left and right margin for the row content
    property int rowMargin: Dims.w(15)
    // size of the icon/s
    property int iconSize: Dims.l(20)
    // size of the label text
    property int labelFontSize: Dims.l(6)
    // onClicked dummy function can be overridden by caller
    property var onClicked: function(){}

    width: parent.width
    height: parent.height

    HighlightBar {
        onClicked: function() { parent.onClicked() }
    }

    Label {
        id: label

        anchors {
            left: parent.left
            leftMargin: rowMargin
            right: icon.left
        }
        text: value
        font.pixelSize: labelFontSize
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        height: parent.height
    }

    Icon {
        id: icon

        anchors {
            right: parent.right
            rightMargin: rowMargin
            verticalCenter: parent.verticalCenter
        }
        height: iconSize
        width: height
    }
}
