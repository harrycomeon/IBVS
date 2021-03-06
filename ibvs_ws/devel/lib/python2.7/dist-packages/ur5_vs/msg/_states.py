# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ur5_vs/states.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class states(genpy.Message):
  _md5sum = "2ad1edff9a04bf37f717ceef18902369"
  _type = "ur5_vs/states"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Float64 p0
std_msgs/Float64 p1
std_msgs/Float64 i0
std_msgs/Float64 i1
std_msgs/Float64 d0
std_msgs/Float64 d1


================================================================================
MSG: std_msgs/Float64
float64 data"""
  __slots__ = ['p0','p1','i0','i1','d0','d1']
  _slot_types = ['std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       p0,p1,i0,i1,d0,d1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(states, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.p0 is None:
        self.p0 = std_msgs.msg.Float64()
      if self.p1 is None:
        self.p1 = std_msgs.msg.Float64()
      if self.i0 is None:
        self.i0 = std_msgs.msg.Float64()
      if self.i1 is None:
        self.i1 = std_msgs.msg.Float64()
      if self.d0 is None:
        self.d0 = std_msgs.msg.Float64()
      if self.d1 is None:
        self.d1 = std_msgs.msg.Float64()
    else:
      self.p0 = std_msgs.msg.Float64()
      self.p1 = std_msgs.msg.Float64()
      self.i0 = std_msgs.msg.Float64()
      self.i1 = std_msgs.msg.Float64()
      self.d0 = std_msgs.msg.Float64()
      self.d1 = std_msgs.msg.Float64()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.p0.data, _x.p1.data, _x.i0.data, _x.i1.data, _x.d0.data, _x.d1.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.p0 is None:
        self.p0 = std_msgs.msg.Float64()
      if self.p1 is None:
        self.p1 = std_msgs.msg.Float64()
      if self.i0 is None:
        self.i0 = std_msgs.msg.Float64()
      if self.i1 is None:
        self.i1 = std_msgs.msg.Float64()
      if self.d0 is None:
        self.d0 = std_msgs.msg.Float64()
      if self.d1 is None:
        self.d1 = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.p0.data, _x.p1.data, _x.i0.data, _x.i1.data, _x.d0.data, _x.d1.data,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.p0.data, _x.p1.data, _x.i0.data, _x.i1.data, _x.d0.data, _x.d1.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.p0 is None:
        self.p0 = std_msgs.msg.Float64()
      if self.p1 is None:
        self.p1 = std_msgs.msg.Float64()
      if self.i0 is None:
        self.i0 = std_msgs.msg.Float64()
      if self.i1 is None:
        self.i1 = std_msgs.msg.Float64()
      if self.d0 is None:
        self.d0 = std_msgs.msg.Float64()
      if self.d1 is None:
        self.d1 = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.p0.data, _x.p1.data, _x.i0.data, _x.i1.data, _x.d0.data, _x.d1.data,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
