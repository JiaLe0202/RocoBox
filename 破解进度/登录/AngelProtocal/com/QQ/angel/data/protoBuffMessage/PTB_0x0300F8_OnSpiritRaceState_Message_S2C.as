package com.QQ.angel.data.protoBuffMessage
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   import flash.utils.IExternalizable;
   
   public final class PTB_0x0300F8_OnSpiritRaceState_Message_S2C extends Message implements IExternalizable
   {
       
      
      private var state$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var id$field:uint;
      
      public function PTB_0x0300F8_OnSpiritRaceState_Message_S2C()
      {
         super();
      }
      
      public function get state() : uint
      {
         if(!hasState)
         {
            return 0;
         }
         return state$field;
      }
      
      public function set state(param1:uint) : void
      {
         hasField$0 |= 2;
         state$field = param1;
      }
      
      public function removeState() : void
      {
         hasField$0 &= 4294967293;
         state$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (hasField$0 & 1) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         hasField$0 |= 1;
         id$field = param1;
      }
      
      public function get hasState() : Boolean
      {
         return (hasField$0 & 2) != 0;
      }
      
      final override public function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc5_ = uint(ReadUtils.read$TYPE_UINT32(param1));
            switch(_loc5_ >>> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: PTB_0x0300F8_OnSpiritRaceState_Message_S2C.id cannot be set twice.");
                  }
                  _loc3_++;
                  id = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: PTB_0x0300F8_OnSpiritRaceState_Message_S2C.state cannot be set twice.");
                  }
                  _loc4_++;
                  state = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  ReadUtils.skip(param1,_loc5_ & 7);
                  break;
            }
         }
      }
      
      final override public function writeToBuffer(param1:WritingBuffer) : void
      {
         if(hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,id$field);
         }
         if(hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,state$field);
         }
      }
      
      public function get id() : uint
      {
         if(!hasId)
         {
            return 0;
         }
         return id$field;
      }
      
      public function removeId() : void
      {
         hasField$0 &= 4294967294;
         id$field = new uint();
      }
   }
}
