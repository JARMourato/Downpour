//
//  Downpour.swift
//  Downpour
//
//  Created by Stephen Radford on 18/05/2016.
//  Copyright © 2016 Stephen Radford. All rights reserved.
//

import Foundation
import TrailBlazer

public typealias VideoDownpour = Downpour<VideoMetadata>
public typealias AudioDownpour = Downpour<AudioMetadata>

open class Downpour<_MetadataType: Metadata>: CustomStringConvertible, Downpourable {
    public typealias MetadataType = _MetadataType
    public let metadata: MetadataType
    public lazy var title: String = { metadata.title }()
    public lazy var type: MetadataFormat = { metadata.type }()

    public lazy var description: String = {
        return "\(Swift.type(of: self))(metadata: \(metadata))"
    }()

    public required init(metadata: MetadataType) {
        self.metadata = metadata
    }
}
