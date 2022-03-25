# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ur5_vs/joint_states.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class joint_states(genpy.Message):
  _md5sum = "24777d71e1429a865a561f091df16fc4"
  _type = "ur5_vs/joint_states"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Float64 ang0
std_msgs/Float64 ang1
std_msgs/Float64 ang2
std_msgs/Float64 ang3
std_msgs/Float64 ang4
std_msgs/Float64 ang5

std_msgs/Float64 vel0
std_msgs/Float64 vel1
std_msgs/Float64 vel2
std_msgs/Float64 vel3
std_msgs/Float64 vel4
std_msgs/Float64 vel5


================================================================================
MSG: std_msgs/Float64
float64 data"""
  __slots__ = ['ang0','ang1','ang2','ang3','ang4','ang5','vel0','vel1','vel2','vel3','vel4','vel5']
  _slot_types = ['std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ang0,ang1,ang2,ang3,ang4,ang5,vel0,vel1,vel2,vel3,vel4,vel5

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(joint_states, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ang0 is None:
        self.ang0 = std_msgs.msg.Float64()
      if self.ang1 is None:
        self.ang1 = std_msgs.msg.Float64()
      if self.ang2 is None:
        self.ang2 = std_msgs.msg.Float64()
      if self.ang3 is None:
        self.ang3 = std_msgs.msg.Float64()
      if self.ang4 is None:
        self.ang4 = std_msgs.msg.Float64()
      if self.ang5 is None:
        self.ang5 = std_msgs.msg.Float64()
      if self.vel0 is None:
        self.vel0 = std_msgs.msg.Float64()
      if self.vel1 is None:
        self.vel1 = std_msgs.msg.Float64()
      if self.vel2 is None:
        self.vel2 = std_msgs.msg.Float64()
      if self.vel3 is None:
        self.vel3 = std_msgs.msg.Float64()
      if self.vel4 is None:
        self.vel4 = std_msgs.msg.Float64()
      if self.vel5 is None:
        self.vel5 = std_msgs.msg.Float64()
    else:
      self.ang0 = std_msgs.msg.Float64()
      self.ang1 = std_msgs.msg.Float64()
      self.ang2 = std_msgs.msg.Float64()
      self.ang3 = std_msgs.msg.Float64()
      self.ang4 = std_msgs.msg.Float64()
      self.ang5 = std_msgs.msg.Float64()
      self.vel0 = std_msgs.msg.Float64()
      self.vel1 = std_msgs.msg.Float64()
      self.vel2 = std_msgs.msg.Float64()
      self.vel3 = std_msgs.msg.Float64()
      self.vel4 = std_msgs.msg.Float64()
      self.vel5 = std_msgs.msg.Float64()

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
      buff.write(_get_struct_12d().pack(_x.ang0.data, _x.ang1.data, _x.ang2.data, _x.ang3.data, _x.ang4.data, _x.ang5.data, _x.vel0.data, _x.vel1.data, _x.vel2.data, _x.vel3.data, _x.vel4.data, _x.vel5.data))
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
      if self.ang0 is None:
        self.ang0 = std_msgs.msg.Float64()
      if self.ang1 is None:
        self.ang1 = std_msgs.msg.Float64()
      if self.ang2 is None:
        self.ang2 = std_msgs.msg.Float64()
      if self.ang3 is None:
        self.ang3 = std_msgs.msg.Float64()
      if self.ang4 is None:
        self.ang4 = std_msgs.msg.Float64()
      if self.ang5 is None:
        self.ang5 = std_msgs.msg.Float64()
      if self.vel0 is None:
        self.vel0 = std_msgs.msg.Float64()
      if self.vel1 is None:
        self.vel1 = std_msgs.msg.Float64()
      if self.vel2 is None:
        self.vel2 = std_msgs.msg.Float64()
      if self.vel3 is None:
        self.vel3 = std_msgs.msg.Float64()
      if self.vel4 is None:
        self.vel4 = std_msgs.msg.Float64()
      if self.vel5 is None:
        self.vel5 = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 96
      (_x.ang0.data, _x.ang1.data, _x.ang2.data, _x.ang3.data, _x.ang4.data, _x.ang5.data, _x.vel0.data, _x.vel1.data, _x.vel2.data, _x.vel3.data, _x.vel4.data, _x.vel5.data,) = _get_struct_12d().unpack(str[start:end])
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
      buff.write(_get_struct_12d().pack(_x.ang0.data, _x.ang1.data, _x.ang2.data, _x.ang3.data, _x.ang4.data, _x.ang5.data, _x.vel0.data, _x.vel1.data, _x.vel2.data, _x.vel3.data, _x.vel4.data, _x.vel5.data))
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
      if self.ang0 is None:
        self.ang0 = std_msgs.msg.Float64()
      if self.ang1 is None:
        self.ang1 = std_msgs.msg.Float64()
      if self.ang2 is None:
        self.ang2 = std_msgs.msg.Float64()
      if self.ang3 is None:
        self.ang3 = std_msgs.msg.Float64()
      if self.ang4 is None:
        self.ang4 = std_msgs.msg.Float64()
      if self.ang5 is None:
        self.ang5 = std_msgs.msg.Float64()
      if self.vel0 is None:
        self.vel0 = std_msgs.msg.Float64()
      if self.vel1 is None:
        self.vel1 = std_msgs.msg.Float64()
      if self.vel2 is None:
        self.vel2 = std_msgs.msg.Float64()
      if self.vel3 is None:
        self.vel3 = std_msgs.msg.Float64()
      if self.vel4 is None:
        self.vel4 = std_msgs.msg.Float64()
      if self.vel5 is None:
        self.vel5 = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 96
      (_x.ang0.data, _x.ang1.data, _x.ang2.data, _x.ang3.data, _x.ang4.data, _x.ang5.data, _x.vel0.data, _x.vel1.data, _x.vel2.data, _x.vel3.data, _x.vel4.data, _x.vel5.data,) = _get_struct_12d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12d = None
def _get_struct_12d():
    global _struct_12d
    if _struct_12d is None:
        _struct_12d = struct.Struct("<12d")
    return _struct_12d