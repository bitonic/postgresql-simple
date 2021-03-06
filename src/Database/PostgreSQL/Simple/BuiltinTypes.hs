{-# LANGUAGE DeriveDataTypeable, OverloadedStrings #-}

------------------------------------------------------------------------------
-- |
-- Module:      Database.PostgreSQL.Simple.BuiltinTypes
-- Copyright:   (c) 2011-2012 Leon P Smith
-- License:     BSD3
-- Maintainer:  Leon P Smith <leon@melding-monads.com>
-- Stability:   experimental
--
------------------------------------------------------------------------------

-- Note that this file is generated by tools/GenBuiltinTypes.hs, and should
-- not be edited directly

module Database.PostgreSQL.Simple.BuiltinTypes
     {-# DEPRECATED "Use TypeInfo instead" #-}
     ( BuiltinType (..)
     , builtin2oid
     , oid2builtin
     , builtin2typname
     , oid2typname
     ) where

import Data.Typeable
import Data.ByteString (ByteString)
import qualified Database.PostgreSQL.LibPQ as PQ

data BuiltinType
   = Bool
   | ByteA
   | Char
   | Name
   | Int8
   | Int2
   | Int4
   | RegProc
   | Text
   | Oid
   | Tid
   | Xid
   | Cid
   | Xml
   | Point
   | LSeg
   | Path
   | Box
   | Polygon
   | Line
   | Cidr
   | Float4
   | Float8
   | AbsTime
   | RelTime
   | TInterval
   | Unknown
   | Circle
   | Money
   | MacAddr
   | Inet
   | BpChar
   | VarChar
   | Date
   | Time
   | Timestamp
   | TimestampTZ
   | Interval
   | TimeTZ
   | Bit
   | VarBit
   | Numeric
   | RefCursor
   | Record
   | Void
   | UUID
   | JSON
     deriving (Eq, Ord, Enum, Bounded, Read, Show, Typeable)

builtin2oid :: BuiltinType -> PQ.Oid
builtin2oid typ = PQ.Oid $ case typ of
  Bool        ->   16
  ByteA       ->   17
  Char        ->   18
  Name        ->   19
  Int8        ->   20
  Int2        ->   21
  Int4        ->   23
  RegProc     ->   24
  Text        ->   25
  Oid         ->   26
  Tid         ->   27
  Xid         ->   28
  Cid         ->   29
  Xml         ->  142
  Point       ->  600
  LSeg        ->  601
  Path        ->  602
  Box         ->  603
  Polygon     ->  604
  Line        ->  628
  Cidr        ->  650
  Float4      ->  700
  Float8      ->  701
  AbsTime     ->  702
  RelTime     ->  703
  TInterval   ->  704
  Unknown     ->  705
  Circle      ->  718
  Money       ->  790
  MacAddr     ->  829
  Inet        ->  869
  BpChar      -> 1042
  VarChar     -> 1043
  Date        -> 1082
  Time        -> 1083
  Timestamp   -> 1114
  TimestampTZ -> 1184
  Interval    -> 1186
  TimeTZ      -> 1266
  Bit         -> 1560
  VarBit      -> 1562
  Numeric     -> 1700
  RefCursor   -> 1790
  Record      -> 2249
  Void        -> 2278
  UUID        -> 2950
  JSON        ->  114

oid2builtin :: PQ.Oid -> Maybe BuiltinType
oid2builtin (PQ.Oid x) = case x of
  16   -> Just Bool
  17   -> Just ByteA
  18   -> Just Char
  19   -> Just Name
  20   -> Just Int8
  21   -> Just Int2
  23   -> Just Int4
  24   -> Just RegProc
  25   -> Just Text
  26   -> Just Oid
  27   -> Just Tid
  28   -> Just Xid
  29   -> Just Cid
  142  -> Just Xml
  600  -> Just Point
  601  -> Just LSeg
  602  -> Just Path
  603  -> Just Box
  604  -> Just Polygon
  628  -> Just Line
  650  -> Just Cidr
  700  -> Just Float4
  701  -> Just Float8
  702  -> Just AbsTime
  703  -> Just RelTime
  704  -> Just TInterval
  705  -> Just Unknown
  718  -> Just Circle
  790  -> Just Money
  829  -> Just MacAddr
  869  -> Just Inet
  1042 -> Just BpChar
  1043 -> Just VarChar
  1082 -> Just Date
  1083 -> Just Time
  1114 -> Just Timestamp
  1184 -> Just TimestampTZ
  1186 -> Just Interval
  1266 -> Just TimeTZ
  1560 -> Just Bit
  1562 -> Just VarBit
  1700 -> Just Numeric
  1790 -> Just RefCursor
  2249 -> Just Record
  2278 -> Just Void
  2950 -> Just UUID
  114  -> Just JSON
  _    -> Nothing

builtin2typname :: BuiltinType -> ByteString
builtin2typname typ = case typ of
  Bool        -> bool
  ByteA       -> bytea
  Char        -> char
  Name        -> name
  Int8        -> int8
  Int2        -> int2
  Int4        -> int4
  RegProc     -> regproc
  Text        -> text
  Oid         -> oid
  Tid         -> tid
  Xid         -> xid
  Cid         -> cid
  Xml         -> xml
  Point       -> point
  LSeg        -> lseg
  Path        -> path
  Box         -> box
  Polygon     -> polygon
  Line        -> line
  Cidr        -> cidr
  Float4      -> float4
  Float8      -> float8
  AbsTime     -> abstime
  RelTime     -> reltime
  TInterval   -> tinterval
  Unknown     -> unknown
  Circle      -> circle
  Money       -> money
  MacAddr     -> macaddr
  Inet        -> inet
  BpChar      -> bpchar
  VarChar     -> varchar
  Date        -> date
  Time        -> time
  Timestamp   -> timestamp
  TimestampTZ -> timestamptz
  Interval    -> interval
  TimeTZ      -> timetz
  Bit         -> bit
  VarBit      -> varbit
  Numeric     -> numeric
  RefCursor   -> refcursor
  Record      -> record
  Void        -> void
  UUID        -> uuid
  JSON        -> json

oid2typname :: PQ.Oid -> Maybe ByteString
oid2typname (PQ.Oid x) = case x of
  16   -> Just bool
  17   -> Just bytea
  18   -> Just char
  19   -> Just name
  20   -> Just int8
  21   -> Just int2
  23   -> Just int4
  24   -> Just regproc
  25   -> Just text
  26   -> Just oid
  27   -> Just tid
  28   -> Just xid
  29   -> Just cid
  142  -> Just xml
  600  -> Just point
  601  -> Just lseg
  602  -> Just path
  603  -> Just box
  604  -> Just polygon
  628  -> Just line
  650  -> Just cidr
  700  -> Just float4
  701  -> Just float8
  702  -> Just abstime
  703  -> Just reltime
  704  -> Just tinterval
  705  -> Just unknown
  718  -> Just circle
  790  -> Just money
  829  -> Just macaddr
  869  -> Just inet
  1042 -> Just bpchar
  1043 -> Just varchar
  1082 -> Just date
  1083 -> Just time
  1114 -> Just timestamp
  1184 -> Just timestamptz
  1186 -> Just interval
  1266 -> Just timetz
  1560 -> Just bit
  1562 -> Just varbit
  1700 -> Just numeric
  1790 -> Just refcursor
  2249 -> Just record
  2278 -> Just void
  2950 -> Just uuid
  114  -> Just json
  _ -> Nothing

bool :: ByteString
bool = "bool"

bytea :: ByteString
bytea = "bytea"

char :: ByteString
char = "char"

name :: ByteString
name = "name"

int8 :: ByteString
int8 = "int8"

int2 :: ByteString
int2 = "int2"

int4 :: ByteString
int4 = "int4"

regproc :: ByteString
regproc = "regproc"

text :: ByteString
text = "text"

oid :: ByteString
oid = "oid"

tid :: ByteString
tid = "tid"

xid :: ByteString
xid = "xid"

cid :: ByteString
cid = "cid"

xml :: ByteString
xml = "xml"

point :: ByteString
point = "point"

lseg :: ByteString
lseg = "lseg"

path :: ByteString
path = "path"

box :: ByteString
box = "box"

polygon :: ByteString
polygon = "polygon"

line :: ByteString
line = "line"

cidr :: ByteString
cidr = "cidr"

float4 :: ByteString
float4 = "float4"

float8 :: ByteString
float8 = "float8"

abstime :: ByteString
abstime = "abstime"

reltime :: ByteString
reltime = "reltime"

tinterval :: ByteString
tinterval = "tinterval"

unknown :: ByteString
unknown = "unknown"

circle :: ByteString
circle = "circle"

money :: ByteString
money = "money"

macaddr :: ByteString
macaddr = "macaddr"

inet :: ByteString
inet = "inet"

bpchar :: ByteString
bpchar = "bpchar"

varchar :: ByteString
varchar = "varchar"

date :: ByteString
date = "date"

time :: ByteString
time = "time"

timestamp :: ByteString
timestamp = "timestamp"

timestamptz :: ByteString
timestamptz = "timestamptz"

interval :: ByteString
interval = "interval"

timetz :: ByteString
timetz = "timetz"

bit :: ByteString
bit = "bit"

varbit :: ByteString
varbit = "varbit"

numeric :: ByteString
numeric = "numeric"

refcursor :: ByteString
refcursor = "refcursor"

record :: ByteString
record = "record"

void :: ByteString
void = "void"

uuid :: ByteString
uuid = "uuid"

json :: ByteString
json = "json"
