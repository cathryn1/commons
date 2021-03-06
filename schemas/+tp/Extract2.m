%{
tp.Extract2 (imported) # refines segmentation and extract traces
-> tp.Segment
-> tp.ExtractOpt
-----

%}

classdef Extract2 < dj.Relvar & dj.AutoPopulate
    
    properties
        popRel = tp.SegmentManual * tp.ExtractOpt & 'pixel_averaging in ("NNMF","median","mean")'
    end
    
    methods(Access=protected)
        function makeTuples(self, key)
            self.insert(key)
            makeTuples(tp.Trace2, key)
        end
    end
end