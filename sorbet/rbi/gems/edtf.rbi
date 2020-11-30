# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/edtf/all/edtf.rbi
#
# edtf-3.0.6

class DateTime < Date
  def edtf; end
  def to_edtf; end
  def values; end
end
module EDTF
  def parse!(input, options = nil); end
  def parse(input, options = nil); end
  def self.parse!(input, options = nil); end
  def self.parse(input, options = nil); end
end
class Anonymous_Struct_94 < Struct
  def day; end
  def day=(_); end
  def month; end
  def month=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def year; end
  def year=(_); end
end
class EDTF::Uncertainty < Anonymous_Struct_94
  def certain!(parts = nil); end
  def certain?(parts = nil); end
  def eql?(other); end
  def hash; end
  def hash_base; end
  def hash_base=(base); end
  def hash_map; end
  def initialize(year = nil, month = nil, day = nil, hash_base = nil); end
  def uncertain!(parts = nil); end
  def uncertain?(parts = nil); end
end
class Anonymous_Struct_95 < Struct
  def day; end
  def day=(_); end
  def month; end
  def month=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def year; end
  def year=(_); end
end
class EDTF::Unspecified < Anonymous_Struct_95
  def day=(_); end
  def initialize; end
  def mask(values); end
  def month=(_); end
  def specific!(parts = nil); end
  def specific?(parts = nil); end
  def specified!(parts = nil); end
  def specified?(parts = nil); end
  def to_s; end
  def unspecific!(parts = nil); end
  def unspecific?(parts = nil); end
  def unspecified!(parts = nil); end
  def unspecified?(parts = nil); end
  def year=(_); end
end
class Date
  def -@; end
  def approximate!(arguments = nil); end
  def approximate; end
  def approximate=(arg0); end
  def approximate?(arguments = nil); end
  def approximately!(arguments = nil); end
  def approximately?(arguments = nil); end
  def calendar; end
  def calendar=(arg0); end
  def calendar?; end
  def certain!(arguments = nil); end
  def certain?(*args, &block); end
  def copy_extended_attributes(other); end
  def day_precision!; end
  def day_precision; end
  def day_precision?; end
  def edtf; end
  def long_year?; end
  def month_precision!; end
  def month_precision; end
  def month_precision?; end
  def negate; end
  def original_advance(options); end
  def original_change(options); end
  def original_initialize_copy(arg0); end
  def precise!(arguments = nil); end
  def precise?(arguments = nil); end
  def precisely!(arguments = nil); end
  def precisely?(arguments = nil); end
  def precision; end
  def precision=(precision); end
  def precision_filter; end
  def prev(n = nil); end
  def season; end
  def season?; end
  def self.edtf!(input, options = nil); end
  def self.edtf(input, options = nil); end
  def skip_timezone; end
  def skip_timezone=(arg0); end
  def skip_timezone?; end
  def specific!(arguments = nil); end
  def specific?(*args, &block); end
  def specified!(arguments = nil); end
  def specified?(*args, &block); end
  def to_edtf; end
  def ua_hash; end
  def uncertain!(arguments = nil); end
  def uncertain; end
  def uncertain=(arg0); end
  def uncertain?(*args, &block); end
  def unspecific!(arguments = nil); end
  def unspecific?(*args, &block); end
  def unspecified!(arguments = nil); end
  def unspecified; end
  def unspecified=(arg0); end
  def unspecified?(*args, &block); end
  def update_precision_filter; end
  def values; end
  def year_precision!; end
  def year_precision; end
  def year_precision?; end
  extend Forwardable
end
class EDTF::Epoch
  def <=>(other); end
  def ===(other); end
  def as_json(*args, &block); end
  def begin(*args, &block); end
  def bsearch(*args, &block); end
  def count(*args, &block); end
  def cover?(other); end
  def each(&block); end
  def edtf; end
  def end(*args, &block); end
  def entries(*args, &block); end
  def eql?(*args, &block); end
  def exclude_end?(*args, &block); end
  def first(*args, &block); end
  def get; end
  def hash(*args, &block); end
  def include?(*args, &block); end
  def initialize(year = nil); end
  def last(*args, &block); end
  def max; end
  def member?(*args, &block); end
  def min; end
  def minmax(*args, &block); end
  def pretty_print(*args, &block); end
  def self.current; end
  def self.duration; end
  def self.format; end
  def self.new(*arg0); end
  def set(year); end
  def size(*args, &block); end
  def step(*args, &block); end
  def sum(*args, &block); end
  def to_a(*args, &block); end
  def to_date; end
  def to_range; end
  def to_s; end
  def year; end
  def year=(year); end
  extend Forwardable
  include Comparable
  include Enumerable
end
class EDTF::Century < EDTF::Epoch
  def self.current; end
  def self.new(*arg0); end
end
class EDTF::Decade < EDTF::Epoch
  def self.current; end
  def self.new(*arg0); end
end
class EDTF::Season
  def <=>(other); end
  def ===(other); end
  def approximate!; end
  def approximate; end
  def approximate=(arg0); end
  def approximate?; end
  def as_json(*args, &block); end
  def autumn!; end
  def autumn?; end
  def begin(*args, &block); end
  def bsearch(*args, &block); end
  def certain!; end
  def certain?; end
  def count(*args, &block); end
  def cover?(other); end
  def each; end
  def edtf; end
  def end(*args, &block); end
  def entries(*args, &block); end
  def eql?(*args, &block); end
  def exclude_end?(*args, &block); end
  def fall!; end
  def fall?; end
  def first!; end
  def first(*args, &block); end
  def first?; end
  def fourth!; end
  def fourth?; end
  def hash(*args, &block); end
  def include?(*args, &block); end
  def initialize(*arguments); end
  def last(*args, &block); end
  def max; end
  def member?(*args, &block); end
  def min; end
  def minmax(*args, &block); end
  def month; end
  def next_season_code(by = nil); end
  def precise!; end
  def precise?; end
  def pretty_print(*args, &block); end
  def qualified?; end
  def qualifier; end
  def qualifier=(arg0); end
  def season; end
  def season=(new_season); end
  def season?; end
  def season_code; end
  def second!; end
  def second?; end
  def self.current; end
  def size(*args, &block); end
  def spring!; end
  def spring?; end
  def step(*args, &block); end
  def succ; end
  def sum(*args, &block); end
  def summer!; end
  def summer?; end
  def third!; end
  def third?; end
  def to_a(*args, &block); end
  def to_date; end
  def to_range; end
  def to_s; end
  def uncertain!; end
  def uncertain; end
  def uncertain=(arg0); end
  def uncertain?; end
  def winter!; end
  def winter?; end
  def year; end
  def year=(new_year); end
  extend Forwardable
  include Comparable
  include Enumerable
end
class EDTF::Interval
  def <=>(other); end
  def ===(other); end
  def begin; end
  def cover?(other); end
  def each(&block); end
  def edtf; end
  def empty?(*args, &block); end
  def end; end
  def eql?(*args, &block); end
  def exclude_end?; end
  def first(n = nil); end
  def from; end
  def from=(date); end
  def hash(*args, &block); end
  def include?(other); end
  def initialize(from = nil, to = nil); end
  def last(n = nil); end
  def length(*args, &block); end
  def max; end
  def member?(other); end
  def min; end
  def mixed_precision?; end
  def open!; end
  def open?; end
  def open_end!; end
  def open_end?; end
  def precision; end
  def step(by = nil); end
  def to; end
  def to=(date); end
  def to_range; end
  def to_s; end
  def unknown?; end
  def unknown_end!; end
  def unknown_end?; end
  def unknown_start!; end
  def unknown_start?; end
  extend Forwardable
  include Comparable
  include Enumerable
end
class EDTF::Set
  def <<(date); end
  def <=>(other); end
  def choice!; end
  def choice; end
  def choice=(arg0); end
  def choice?; end
  def dates; end
  def each(&block); end
  def earlier!; end
  def earlier; end
  def earlier=(arg0); end
  def earlier?; end
  def edtf; end
  def empty?(*args, &block); end
  def include?(*args, &block); end
  def initialize(*dates); end
  def initialize_copy(other); end
  def later!; end
  def later; end
  def later=(arg0); end
  def later?; end
  def length(*args, &block); end
  def parenthesize(string); end
  def size(*args, &block); end
  def to_a; end
  def to_s; end
  def to_set; end
  extend Forwardable
  include Comparable
  include Enumerable
end
class EDTF::Unknown < Date::Infinity
  def approximate?; end
  def certain?; end
  def edtf; end
  def precise?; end
  def to_s; end
  def uncertain?; end
end
class EDTF::Parser < Racc::Parser
  def _reduce_100(val, _values, result); end
  def _reduce_101(val, _values, result); end
  def _reduce_102(val, _values, result); end
  def _reduce_103(val, _values, result); end
  def _reduce_104(val, _values, result); end
  def _reduce_105(val, _values, result); end
  def _reduce_106(val, _values, result); end
  def _reduce_107(val, _values, result); end
  def _reduce_108(val, _values, result); end
  def _reduce_109(val, _values, result); end
  def _reduce_11(val, _values, result); end
  def _reduce_110(val, _values, result); end
  def _reduce_112(val, _values, result); end
  def _reduce_113(val, _values, result); end
  def _reduce_114(val, _values, result); end
  def _reduce_115(val, _values, result); end
  def _reduce_116(val, _values, result); end
  def _reduce_117(val, _values, result); end
  def _reduce_118(val, _values, result); end
  def _reduce_119(val, _values, result); end
  def _reduce_12(val, _values, result); end
  def _reduce_120(val, _values, result); end
  def _reduce_121(val, _values, result); end
  def _reduce_122(val, _values, result); end
  def _reduce_123(val, _values, result); end
  def _reduce_124(val, _values, result); end
  def _reduce_125(val, _values, result); end
  def _reduce_126(val, _values, result); end
  def _reduce_127(val, _values, result); end
  def _reduce_128(val, _values, result); end
  def _reduce_129(val, _values, result); end
  def _reduce_130(val, _values, result); end
  def _reduce_132(val, _values, result); end
  def _reduce_14(val, _values, result); end
  def _reduce_143(val, _values, result); end
  def _reduce_144(val, _values, result); end
  def _reduce_145(val, _values, result); end
  def _reduce_146(val, _values, result); end
  def _reduce_148(val, _values, result); end
  def _reduce_149(val, _values, result); end
  def _reduce_15(val, _values, result); end
  def _reduce_150(val, _values, result); end
  def _reduce_151(val, _values, result); end
  def _reduce_152(val, _values, result); end
  def _reduce_153(val, _values, result); end
  def _reduce_154(val, _values, result); end
  def _reduce_158(val, _values, result); end
  def _reduce_159(val, _values, result); end
  def _reduce_16(val, _values, result); end
  def _reduce_160(val, _values, result); end
  def _reduce_161(val, _values, result); end
  def _reduce_162(val, _values, result); end
  def _reduce_163(val, _values, result); end
  def _reduce_165(val, _values, result); end
  def _reduce_167(val, _values, result); end
  def _reduce_169(val, _values, result); end
  def _reduce_17(val, _values, result); end
  def _reduce_170(val, _values, result); end
  def _reduce_171(val, _values, result); end
  def _reduce_174(val, _values, result); end
  def _reduce_175(val, _values, result); end
  def _reduce_176(val, _values, result); end
  def _reduce_177(val, _values, result); end
  def _reduce_178(val, _values, result); end
  def _reduce_179(val, _values, result); end
  def _reduce_19(val, _values, result); end
  def _reduce_20(val, _values, result); end
  def _reduce_21(val, _values, result); end
  def _reduce_22(val, _values, result); end
  def _reduce_24(val, _values, result); end
  def _reduce_25(val, _values, result); end
  def _reduce_28(val, _values, result); end
  def _reduce_29(val, _values, result); end
  def _reduce_38(val, _values, result); end
  def _reduce_39(val, _values, result); end
  def _reduce_44(val, _values, result); end
  def _reduce_45(val, _values, result); end
  def _reduce_46(val, _values, result); end
  def _reduce_47(val, _values, result); end
  def _reduce_48(val, _values, result); end
  def _reduce_49(val, _values, result); end
  def _reduce_50(val, _values, result); end
  def _reduce_58(val, _values, result); end
  def _reduce_59(val, _values, result); end
  def _reduce_6(val, _values, result); end
  def _reduce_60(val, _values, result); end
  def _reduce_61(val, _values, result); end
  def _reduce_62(val, _values, result); end
  def _reduce_63(val, _values, result); end
  def _reduce_64(val, _values, result); end
  def _reduce_65(val, _values, result); end
  def _reduce_66(val, _values, result); end
  def _reduce_7(val, _values, result); end
  def _reduce_75(val, _values, result); end
  def _reduce_76(val, _values, result); end
  def _reduce_77(val, _values, result); end
  def _reduce_78(val, _values, result); end
  def _reduce_79(val, _values, result); end
  def _reduce_8(val, _values, result); end
  def _reduce_80(val, _values, result); end
  def _reduce_81(val, _values, result); end
  def _reduce_82(val, _values, result); end
  def _reduce_83(val, _values, result); end
  def _reduce_84(val, _values, result); end
  def _reduce_85(val, _values, result); end
  def _reduce_86(val, _values, result); end
  def _reduce_87(val, _values, result); end
  def _reduce_88(val, _values, result); end
  def _reduce_89(val, _values, result); end
  def _reduce_9(val, _values, result); end
  def _reduce_90(val, _values, result); end
  def _reduce_91(val, _values, result); end
  def _reduce_92(val, _values, result); end
  def _reduce_98(val, _values, result); end
  def _reduce_99(val, _values, result); end
  def _reduce_none(val, _values, result); end
  def apply_uncertainty(date, uncertainty, scope = nil); end
  def debug?; end
  def initialize(options = nil); end
  def next_token; end
  def on_error(tid, value, stack); end
  def options; end
  def parse!(input); end
  def parse(input); end
  def self.defaults; end
  def uoa(date, uncertainty, scope = nil); end
end
class Range
  def edtf; end
end
