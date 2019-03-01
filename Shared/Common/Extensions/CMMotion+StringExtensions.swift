//
//  CMMotion+StringExtensions.swift
//  HomeAssistant
//
//  Created by Robert Trencheny on 8/6/18.
//  Copyright © 2018 Robbie Trencheny. All rights reserved.
//

import Foundation
import CoreMotion

// Don't translate these strings as they are sent to HA and we don't want to cause people to have to write
// automations expecting localized strings.

extension CMMotionActivity {
    var activityTypes: [String] {
        var types: [String] = []

        if self.walking {
            types.append("Walking")
        } else if self.running {
            types.append("Running")
        } else if self.automotive {
            types.append("Automotive")
        } else if self.cycling {
            types.append("Cycling")
        } else if self.stationary {
            types.append("Stationary")
        } else {
            types.append("Unknown")
        }

        return types
    }
}

extension CMMotionActivityConfidence {
    var description: String {
        if self == CMMotionActivityConfidence.low {
            return "Low"
        } else if self == CMMotionActivityConfidence.medium {
            return "Medium"
        } else if self == CMMotionActivityConfidence.high {
            return "High"
        }
        return "Unknown"
    }
}
