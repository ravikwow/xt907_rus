.class public Lcom/motorola/messaging/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOCAL_LOG:Z

.field private static mContentTypeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/motorola/messaging/pdu/PduBody;

.field private mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/motorola/messaging/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    .line 78
    sput-object v1, Lcom/motorola/messaging/pdu/PduParser;->mTypeParam:[B

    .line 83
    sput-object v1, Lcom/motorola/messaging/pdu/PduParser;->mStartParam:[B

    .line 95
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 73
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 103
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 104
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/motorola/messaging/pdu/PduHeaders;)Z
    .locals 39
    .param p0, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 1994
    if-nez p0, :cond_0

    .line 1995
    const/16 v37, 0x0

    .line 2201
    :goto_0
    return v37

    .line 1999
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 2002
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 2003
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 2005
    const/16 v37, 0x0

    goto :goto_0

    .line 2009
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2198
    const/16 v37, 0x0

    goto :goto_0

    .line 2012
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 2013
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 2014
    const/16 v37, 0x0

    goto :goto_0

    .line 2018
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v35

    .line 2019
    .local v35, "srFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 2020
    const/16 v37, 0x0

    goto :goto_0

    .line 2024
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 2025
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 2026
    const/16 v37, 0x0

    goto :goto_0

    .line 2032
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 2033
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 2034
    const/16 v37, 0x0

    goto :goto_0

    .line 2038
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 2039
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 2040
    const/16 v37, 0x0

    goto :goto_0

    .line 2046
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 2047
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 2048
    const/16 v37, 0x0

    goto :goto_0

    .line 2052
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 2053
    .local v11, "niExpiry":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_6

    .line 2054
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2058
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 2059
    .local v13, "niMessageClass":[B
    if-nez v13, :cond_7

    .line 2060
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2064
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 2065
    .local v14, "niMessageSize":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_8

    .line 2066
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2070
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 2071
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 2072
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2078
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niExpiry":J
    .end local v13    # "niMessageClass":[B
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2079
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 2080
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2084
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2085
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 2086
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2092
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2093
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 2094
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2098
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2099
    .local v20, "rcDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_15

    .line 2100
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2106
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 2107
    .local v3, "diDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_b

    .line 2108
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2112
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2113
    .local v5, "diMessageId":[B
    if-nez v5, :cond_c

    .line 2114
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2118
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2119
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 2120
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2124
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v7

    .line 2125
    .local v7, "diTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 2126
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2132
    .end local v3    # "diDate":J
    .end local v5    # "diMessageId":[B
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2133
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 2134
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2140
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2141
    .local v22, "roDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_e

    .line 2142
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2146
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v24

    .line 2147
    .local v24, "roFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 2148
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2152
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2153
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 2154
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2158
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2159
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 2160
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2164
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v27

    .line 2165
    .local v27, "roTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 2166
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2172
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v28

    .line 2173
    .local v28, "rrFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 2174
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2178
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2179
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 2180
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2184
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2185
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 2186
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2190
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v31

    .line 2191
    .local v31, "rrTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 2192
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2201
    .end local v28    # "rrFrom":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 2009
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/motorola/messaging/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/motorola/messaging/pdu/PduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1958
    sget-boolean v4, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1959
    :cond_0
    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1984
    :cond_1
    :goto_0
    return v2

    .line 1965
    :cond_2
    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1966
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1967
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    .line 1968
    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 1969
    goto :goto_0

    .line 1975
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1976
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1977
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 1978
    sget-object v4, Lcom/motorola/messaging/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1979
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1367
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1368
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1369
    .local v0, "temp":I
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1370
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1333
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1334
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1335
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1336
    .local v1, "temp":I
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1337
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1339
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1340
    invoke-static {v1}, Lcom/motorola/messaging/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1341
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1349
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1350
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1344
    :cond_3
    invoke-static {v1}, Lcom/motorola/messaging/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1345
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1353
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1354
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1357
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1317
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1328
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1321
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1328
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1273
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1298
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1277
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1298
    const/4 v0, 0x1

    goto :goto_0

    .line 1277
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1081
    sget-boolean v0, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "PduParser"

    invoke-static {v0, p0}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_0
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 12
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1671
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v10, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1673
    :cond_0
    const/4 v0, 0x0

    .line 1674
    .local v0, "contentType":[B
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1675
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 1676
    .local v9, "temp":I
    sget-boolean v10, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    const/4 v10, -0x1

    if-ne v10, v9, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1677
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1679
    and-int/lit16 v1, v9, 0xff

    .line 1681
    .local v1, "cur":I
    const/16 v10, 0x20

    if-ge v1, v10, :cond_7

    .line 1683
    const/4 v6, 0x0

    .line 1685
    .local v6, "length":I
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1691
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1692
    .local v8, "startPos":I
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1693
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 1694
    sget-boolean v10, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    const/4 v10, -0x1

    if-ne v10, v9, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1686
    .end local v8    # "startPos":I
    :catch_0
    move-exception v2

    .line 1687
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v10, "exceeded length!"

    invoke-static {v10}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1688
    const/4 v10, 0x0

    .line 1731
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "length":I
    :goto_0
    return-object v10

    .line 1695
    .restart local v6    # "length":I
    .restart local v8    # "startPos":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1696
    and-int/lit16 v4, v9, 0xff

    .line 1698
    .local v4, "first":I
    const/16 v10, 0x20

    if-lt v4, v10, :cond_4

    const/16 v10, 0x7f

    if-gt v4, v10, :cond_4

    .line 1699
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1714
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1715
    .local v3, "endPos":I
    sub-int v10, v8, v3

    sub-int v7, v6, v10

    .line 1716
    .local v7, "parameterLen":I
    if-lez v7, :cond_3

    .line 1717
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/motorola/messaging/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1720
    :cond_3
    if-gez v7, :cond_8

    .line 1721
    const-string v10, "PduParser"

    const-string v11, "Corrupt MMS message"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    sget-object v10, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_0

    .line 1700
    .end local v3    # "endPos":I
    .end local v7    # "parameterLen":I
    :cond_4
    const/16 v10, 0x7f

    if-le v4, v10, :cond_6

    .line 1701
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1703
    .local v5, "index":I
    sget-object v10, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    .line 1704
    sget-object v10, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 1706
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1707
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1710
    .end local v5    # "index":I
    :cond_6
    const-string v10, "PduParser"

    const-string v11, "Corrupt content-type"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    sget-object v10, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_0

    .line 1724
    .end local v4    # "first":I
    .end local v6    # "length":I
    .end local v8    # "startPos":I
    :cond_7
    const/16 v10, 0x7f

    if-gt v1, v10, :cond_9

    .line 1725
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v10, v0

    .line 1731
    goto :goto_0

    .line 1727
    :cond_9
    sget-object v10, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 19
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1500
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1501
    :cond_0
    sget-boolean v17, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1503
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1504
    .local v14, "startPos":I
    const/4 v15, 0x0

    .line 1505
    .local v15, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1506
    .local v10, "lastLen":I
    :goto_0
    if-lez v10, :cond_d

    .line 1507
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 1508
    .local v12, "param":I
    sget-boolean v17, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1509
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 1511
    sparse-switch v12, :sswitch_data_0

    .line 1639
    sget-boolean v17, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    if-eqz v17, :cond_3

    .line 1640
    const-string v17, "PduParser"

    const-string v18, "Not supported Content-Type parameter"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_3
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/motorola/messaging/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1643
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1527
    :sswitch_0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1528
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1529
    .local v7, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1530
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_5

    .line 1532
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1534
    .local v9, "index":I
    sget-object v17, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 1535
    sget-object v17, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 1536
    .local v16, "type":[B
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .end local v9    # "index":I
    .end local v16    # "type":[B
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1549
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1550
    goto/16 :goto_0

    .line 1542
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1543
    .restart local v16    # "type":[B
    if-eqz v16, :cond_4

    if-eqz p1, :cond_4

    .line 1544
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1567
    .end local v7    # "first":I
    .end local v16    # "type":[B
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1568
    .local v13, "start":[B
    if-eqz v13, :cond_6

    if-eqz p1, :cond_6

    .line 1569
    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1573
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1574
    goto/16 :goto_0

    .line 1591
    .end local v13    # "start":[B
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1592
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1593
    .local v8, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1595
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_7

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_8

    :cond_7
    if-nez v8, :cond_a

    .line 1598
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1600
    .local v5, "charsetStr":[B
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 1602
    .local v4, "charsetInt":I
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    .end local v4    # "charsetInt":I
    .end local v5    # "charsetStr":[B
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1617
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1618
    goto/16 :goto_0

    .line 1603
    .restart local v5    # "charsetStr":[B
    :catch_0
    move-exception v6

    .line 1605
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "PduParser"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1606
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1610
    .end local v5    # "charsetStr":[B
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .line 1611
    .local v3, "charset":I
    if-eqz p1, :cond_9

    .line 1612
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1630
    .end local v3    # "charset":I
    .end local v8    # "firstValue":I
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1631
    .local v11, "name":[B
    if-eqz v11, :cond_b

    if-eqz p1, :cond_b

    .line 1632
    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1636
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1637
    goto/16 :goto_0

    .line 1645
    .end local v11    # "name":[B
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1651
    .end local v12    # "param":I
    :cond_d
    if-eqz v10, :cond_e

    .line 1652
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_e
    return-void

    .line 1511
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v7, 0x0

    .line 1160
    sget-boolean v8, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1161
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1162
    const/4 v3, 0x0

    .line 1163
    .local v3, "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1164
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1165
    .local v5, "temp":I
    sget-boolean v8, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1166
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1168
    .local v2, "first":I
    if-nez v2, :cond_2

    .line 1199
    :goto_0
    return-object v7

    .line 1172
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1173
    const/16 v8, 0x20

    if-ge v2, v8, :cond_4

    .line 1176
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    if-nez v8, :cond_3

    .line 1177
    new-instance v8, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const-string v9, ""

    invoke-direct {v8, v9}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v8, "exceeded length!"

    invoke-static {v8}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1187
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1190
    .local v6, "textString":[B
    if-eqz v0, :cond_5

    .line 1191
    :try_start_1
    new-instance v4, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1199
    goto :goto_0

    .line 1193
    :cond_5
    new-instance v4, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/motorola/messaging/pdu/EncodedStringValue;
    goto :goto_1

    .line 1195
    :catch_1
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1442
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1443
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1444
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1445
    .local v0, "temp":I
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1446
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1447
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1448
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1450
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1410
    sget-boolean v5, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1411
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1412
    .local v4, "temp":I
    sget-boolean v5, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1413
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1415
    .local v0, "count":I
    if-le v0, v8, :cond_2

    .line 1416
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1419
    :cond_2
    const-wide/16 v2, 0x0

    .line 1421
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1422
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1423
    sget-boolean v5, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1424
    :cond_3
    shl-long/2addr v2, v8

    .line 1425
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1428
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/motorola/messaging/pdu/PduPart;I)Z
    .locals 29
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .param p2, "length"    # I

    .prologue
    .line 1744
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v26, :cond_0

    if-nez p0, :cond_0

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 1745
    :cond_0
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v26, :cond_1

    if-nez p1, :cond_1

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 1746
    :cond_1
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v26, :cond_2

    if-gtz p2, :cond_2

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 1764
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1765
    .local v16, "startPos":I
    const/16 v21, 0x0

    .line 1766
    .local v21, "tempPos":I
    move/from16 v12, p2

    .line 1767
    .local v12, "lastLen":I
    :cond_3
    :goto_0
    if-lez v12, :cond_18

    .line 1768
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1769
    .local v8, "header":I
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v26, :cond_4

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_4

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 1770
    :cond_4
    add-int/lit8 v12, v12, -0x1

    .line 1772
    const/16 v26, 0x7f

    move/from16 v0, v26

    if-le v8, v0, :cond_13

    .line 1774
    sparse-switch v8, :sswitch_data_0

    .line 1906
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    if-eqz v26, :cond_5

    .line 1907
    const-string v26, "PduParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Not supported Part headers: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    :cond_5
    const/16 v26, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/motorola/messaging/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 1910
    const-string v26, "PduParser"

    const-string v27, "Corrupt Part headers"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const/16 v26, 0x0

    .line 1947
    .end local v8    # "header":I
    :goto_1
    return v26

    .line 1780
    .restart local v8    # "header":I
    :sswitch_0
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1781
    .local v6, "contentLocation":[B
    if-eqz v6, :cond_6

    .line 1782
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 1785
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1786
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    .line 1787
    goto :goto_0

    .line 1790
    .end local v6    # "contentLocation":[B
    :sswitch_1
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1791
    .local v14, "location":[B
    if-eqz v14, :cond_7

    .line 1792
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/motorola/messaging/pdu/PduPart;->setLocation([B)V

    .line 1795
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1796
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    .line 1797
    goto/16 :goto_0

    .line 1804
    .end local v14    # "location":[B
    :sswitch_2
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1805
    .local v5, "contentId":[B
    if-eqz v5, :cond_8

    .line 1806
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 1809
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1810
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    .line 1811
    goto/16 :goto_0

    .line 1828
    .end local v5    # "contentId":[B
    :sswitch_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsContentDispositionSupport()Z

    move-result v4

    .line 1830
    .local v4, "contentDisposition":Z
    if-eqz v4, :cond_3

    .line 1831
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v20

    .line 1833
    .local v20, "tempInt":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1835
    const/16 v26, 0x1f

    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 1836
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1838
    .local v3, "contentDisposit":[B
    if-eqz v3, :cond_b

    .line 1839
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1840
    .local v17, "strContentDisposition":Ljava/lang/String;
    const-string v26, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1842
    .local v10, "items":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v10

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_b

    .line 1843
    aget-object v26, v10, v9

    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1844
    .local v15, "param":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1845
    const/16 v26, 0x0

    aget-object v26, v15, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    .line 1842
    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1846
    :cond_a
    array-length v0, v15

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/16 v26, 0x0

    aget-object v26, v15, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "filename"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 1848
    const/16 v26, 0x1

    aget-object v26, v15, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    goto :goto_3

    .line 1853
    .end local v9    # "i":I
    .end local v10    # "items":[Ljava/lang/String;
    .end local v15    # "param":[Ljava/lang/String;
    .end local v17    # "strContentDisposition":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1854
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    .line 1855
    goto/16 :goto_0

    .line 1856
    .end local v3    # "contentDisposit":[B
    :cond_c
    const/4 v13, 0x0

    .line 1858
    .local v13, "len":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1864
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1865
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v24

    .line 1866
    .local v24, "thisStartPos":I
    const/16 v23, 0x0

    .line 1867
    .local v23, "thisEndPos":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v25

    .line 1869
    .local v25, "value":I
    const/16 v26, 0x80

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 1870
    sget-object v26, Lcom/motorola/messaging/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    .line 1883
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v23

    .line 1884
    sub-int v26, v24, v23

    move/from16 v0, v26

    if-ge v0, v13, :cond_e

    .line 1885
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v25

    .line 1886
    const/16 v26, 0x98

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 1887
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    .line 1892
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v23

    .line 1893
    sub-int v26, v24, v23

    move/from16 v0, v26

    if-ge v0, v13, :cond_e

    .line 1894
    sub-int v26, v24, v23

    sub-int v11, v13, v26

    .line 1895
    .local v11, "last":I
    new-array v0, v11, [B

    move-object/from16 v18, v0

    .line 1896
    .local v18, "temp":[B
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1900
    .end local v11    # "last":I
    .end local v18    # "temp":[B
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1901
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    goto/16 :goto_0

    .line 1859
    .end local v23    # "thisEndPos":I
    .end local v24    # "thisStartPos":I
    .end local v25    # "value":I
    :catch_0
    move-exception v7

    .line 1860
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "exceeded length! Header is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1861
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1871
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v23    # "thisEndPos":I
    .restart local v24    # "thisStartPos":I
    .restart local v25    # "value":I
    :cond_f
    const/16 v26, 0x81

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1872
    sget-object v26, Lcom/motorola/messaging/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_4

    .line 1873
    :cond_10
    const/16 v26, 0x82

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 1874
    sget-object v26, Lcom/motorola/messaging/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_4

    .line 1876
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1878
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_4

    .line 1913
    .end local v4    # "contentDisposition":Z
    .end local v13    # "len":I
    .end local v20    # "tempInt":I
    .end local v23    # "thisEndPos":I
    .end local v24    # "thisStartPos":I
    .end local v25    # "value":I
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1916
    :cond_13
    const/16 v26, 0x20

    move/from16 v0, v26

    if-lt v8, v0, :cond_15

    const/16 v26, 0x7f

    move/from16 v0, v26

    if-gt v8, v0, :cond_15

    .line 1918
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v19

    .line 1919
    .local v19, "tempHeader":[B
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v22

    .line 1922
    .local v22, "tempValue":[B
    const/16 v26, 0x1

    const-string v27, "Content-Transfer-Encoding"

    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1924
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1927
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 1928
    sub-int v26, v16, v21

    sub-int v12, p2, v26

    .line 1929
    goto/16 :goto_0

    .line 1930
    .end local v19    # "tempHeader":[B
    .end local v22    # "tempValue":[B
    :cond_15
    sget-boolean v26, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    if-eqz v26, :cond_16

    .line 1931
    const-string v26, "PduParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Not supported Part headers: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :cond_16
    const/16 v26, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/motorola/messaging/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 1935
    const-string v26, "PduParser"

    const-string v27, "Corrupt Part headers"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1938
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1942
    .end local v8    # "header":I
    :cond_18
    if-eqz v12, :cond_19

    .line 1943
    const-string v26, "PduParser"

    const-string v27, "Corrupt Part headers"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1947
    :cond_19
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1774
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0x9c -> :sswitch_1
        0xae -> :sswitch_3
        0xc0 -> :sswitch_2
        0xc5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;
    .locals 26
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 959
    if-nez p0, :cond_1

    .line 960
    const/4 v3, 0x0

    .line 1072
    :cond_0
    :goto_0
    return-object v3

    .line 963
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 964
    .local v7, "count":I
    new-instance v3, Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v3}, Lcom/motorola/messaging/pdu/PduBody;-><init>()V

    .line 966
    .local v3, "body":Lcom/motorola/messaging/pdu/PduBody;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v7, :cond_0

    .line 967
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 968
    .local v13, "headerLength":I
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 969
    .local v9, "dataLength":I
    new-instance v17, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 970
    .local v17, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v22

    .line 971
    .local v22, "startPos":I
    if-gtz v22, :cond_2

    .line 973
    const/4 v3, 0x0

    goto :goto_0

    .line 977
    :cond_2
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/motorola/messaging/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 979
    .local v6, "contentType":[B
    if-eqz v6, :cond_5

    .line 980
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 986
    :goto_2
    const/16 v23, 0x97

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v16, v23

    check-cast v16, [B

    .line 987
    .local v16, "name":[B
    if-eqz v16, :cond_3

    .line 988
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setName([B)V

    .line 992
    :cond_3
    const/16 v23, 0x81

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 993
    .local v4, "charset":Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 994
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    .line 998
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 999
    .local v11, "endPos":I
    sub-int v23, v22, v11

    sub-int v21, v13, v23

    .line 1000
    .local v21, "partHeaderLen":I
    if-lez v21, :cond_6

    .line 1001
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/motorola/messaging/pdu/PduPart;I)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1003
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 982
    .end local v4    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v16    # "name":[B
    .end local v21    # "partHeaderLen":I
    :cond_5
    sget-object v23, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 1005
    .restart local v4    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v16    # "name":[B
    .restart local v21    # "partHeaderLen":I
    :cond_6
    if-gez v21, :cond_7

    .line 1007
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1013
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v23

    if-nez v23, :cond_8

    .line 1018
    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1019
    .local v8, "ctTypeStr":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1020
    .local v12, "extension":Ljava/lang/String;
    if-eqz v12, :cond_a

    const-string v23, ""

    move-object/from16 v0, v23

    if-eq v12, v0, :cond_a

    .line 1021
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 1030
    .end local v8    # "ctTypeStr":Ljava/lang/String;
    .end local v12    # "extension":Ljava/lang/String;
    :cond_8
    :goto_3
    if-lez v9, :cond_9

    .line 1031
    new-array v0, v9, [B

    move-object/from16 v19, v0

    .line 1032
    .local v19, "partData":[B
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1033
    .local v18, "partContentType":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1034
    const-string v23, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1036
    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v5

    .line 1038
    .local v5, "childBody":Lcom/motorola/messaging/pdu/PduBody;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v17

    .line 1063
    .end local v5    # "childBody":Lcom/motorola/messaging/pdu/PduBody;
    .end local v18    # "partContentType":Ljava/lang/String;
    .end local v19    # "partData":[B
    :cond_9
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduParser;->checkPartPosition(Lcom/motorola/messaging/pdu/PduPart;)I

    move-result v23

    if-nez v23, :cond_f

    .line 1065
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/motorola/messaging/pdu/PduBody;->addPart(ILcom/motorola/messaging/pdu/PduPart;)V

    .line 966
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1024
    .restart local v8    # "ctTypeStr":Ljava/lang/String;
    .restart local v12    # "extension":Ljava/lang/String;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    goto :goto_3

    .line 1041
    .end local v8    # "ctTypeStr":Ljava/lang/String;
    .end local v12    # "extension":Ljava/lang/String;
    .restart local v18    # "partContentType":Ljava/lang/String;
    .restart local v19    # "partData":[B
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v20

    .line 1042
    .local v20, "partDataEncoding":[B
    if-eqz v20, :cond_c

    .line 1043
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1044
    .local v10, "encoding":Ljava/lang/String;
    const-string v23, "base64"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1046
    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/pdu/Base64;->decodeBase64([B)[B

    move-result-object v19

    .line 1054
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_c
    :goto_6
    if-nez v19, :cond_e

    .line 1055
    const-string v23, "Decode part data error!"

    invoke-static/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1056
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1047
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_d
    const-string v23, "quoted-printable"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1049
    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v19

    goto :goto_6

    .line 1058
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    goto :goto_4

    .line 1068
    .end local v18    # "partContentType":Ljava/lang/String;
    .end local v19    # "partData":[B
    .end local v20    # "partDataEncoding":[B
    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/motorola/messaging/pdu/PduBody;->addPart(Lcom/motorola/messaging/pdu/PduPart;)Z

    goto :goto_5
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1387
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1388
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1389
    .local v0, "temp":I
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1390
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1098
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1099
    :cond_0
    const/4 v0, 0x0

    .line 1100
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1101
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1117
    :goto_0
    return v2

    .line 1105
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1106
    shl-int/lit8 v0, v0, 0x7

    .line 1107
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1108
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1109
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1110
    goto :goto_0

    .line 1114
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1115
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1117
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1135
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1136
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1137
    .local v1, "temp":I
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1138
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1140
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1143
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1142
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1143
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1146
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1211
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1229
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1232
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1233
    .local v0, "temp":I
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1234
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1237
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1252
    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/messaging/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1238
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1241
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1244
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static singlePartToMixed(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;
    .locals 14
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 183
    if-nez p1, :cond_0

    move-object v0, v10

    .line 257
    :goto_0
    return-object v0

    .line 187
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v0}, Lcom/motorola/messaging/pdu/PduBody;-><init>()V

    .line 188
    .local v0, "body":Lcom/motorola/messaging/pdu/PduBody;
    new-instance v6, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {v6}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 190
    .local v6, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 191
    .local v2, "dataLength":I
    if-gtz v2, :cond_1

    move-object v0, v10

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    if-eqz p0, :cond_6

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 203
    :goto_1
    sget-object v9, Lcom/motorola/messaging/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    const/16 v11, 0x97

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v5, v9

    check-cast v5, [B

    .line 204
    .local v5, "name":[B
    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {v6, v5}, Lcom/motorola/messaging/pdu/PduPart;->setName([B)V

    .line 209
    :cond_2
    sget-object v9, Lcom/motorola/messaging/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    const/16 v11, 0x81

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 210
    .local v1, "charset":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 211
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    .line 217
    :cond_3
    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v9

    if-nez v9, :cond_4

    .line 221
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "extension":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 232
    .end local v4    # "extension":Ljava/lang/String;
    :cond_4
    :goto_2
    new-array v7, v2, [B

    .line 233
    .local v7, "partData":[B
    invoke-virtual {p1, v7, v13, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 235
    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v8

    .line 236
    .local v8, "partDataEncoding":[B
    if-eqz v8, :cond_5

    .line 237
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 238
    .local v3, "encoding":Ljava/lang/String;
    const-string v9, "base64"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 240
    invoke-static {v7}, Lcom/motorola/messaging/pdu/Base64;->decodeBase64([B)[B

    move-result-object v7

    .line 248
    .end local v3    # "encoding":Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v7, :cond_9

    .line 249
    const-string v9, "Decode part data error!"

    invoke-static {v9}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v10

    .line 250
    goto/16 :goto_0

    .line 199
    .end local v1    # "charset":Ljava/lang/Integer;
    .end local v5    # "name":[B
    .end local v7    # "partData":[B
    .end local v8    # "partDataEncoding":[B
    :cond_6
    sget-object v9, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v13

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    goto/16 :goto_1

    .line 226
    .restart local v1    # "charset":Ljava/lang/Integer;
    .restart local v4    # "extension":Ljava/lang/String;
    .restart local v5    # "name":[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    goto :goto_2

    .line 241
    .end local v4    # "extension":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v7    # "partData":[B
    .restart local v8    # "partDataEncoding":[B
    :cond_8
    const-string v9, "quoted-printable"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 243
    invoke-static {v7}, Lcom/motorola/messaging/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v7

    goto :goto_3

    .line 252
    .end local v3    # "encoding":Ljava/lang/String;
    :cond_9
    invoke-virtual {v6, v7}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 255
    invoke-virtual {v0, v6}, Lcom/motorola/messaging/pdu/PduBody;->addPart(Lcom/motorola/messaging/pdu/PduPart;)Z

    goto/16 :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1462
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1463
    :cond_0
    new-array v0, p1, [B

    .line 1464
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1465
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1466
    const/4 v1, -0x1

    .line 1468
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/motorola/messaging/pdu/GenericPdu;
    .locals 17

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v14, :cond_1

    .line 268
    const/4 v11, 0x0

    .line 377
    :cond_0
    :goto_0
    return-object v11

    .line 272
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/motorola/messaging/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduHeaders;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    if-nez v14, :cond_2

    .line 275
    const/4 v11, 0x0

    goto :goto_0

    .line 279
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v15, 0x8c

    invoke-virtual {v14, v15}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 282
    .local v6, "messageType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-static {v14}, Lcom/motorola/messaging/pdu/PduParser;->checkMandatoryHeader(Lcom/motorola/messaging/pdu/PduHeaders;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 283
    const-string v14, "check mandatory headers failed!"

    invoke-static {v14}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 284
    const/4 v11, 0x0

    goto :goto_0

    .line 287
    :cond_3
    const/16 v14, 0x80

    if-eq v14, v6, :cond_4

    const/16 v14, 0x84

    if-ne v14, v6, :cond_9

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v15, 0x84

    invoke-virtual {v14, v15}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 291
    .local v2, "contentType":[B
    if-nez v2, :cond_5

    .line 292
    const/4 v11, 0x0

    goto :goto_0

    .line 294
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 295
    .local v3, "ctTypeStr":Ljava/lang/String;
    const-string v14, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "application/vnd.wap.multipart.related"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 299
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v14}, Lcom/motorola/messaging/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    if-nez v14, :cond_9

    .line 302
    const/4 v11, 0x0

    goto :goto_0

    .line 304
    :cond_7
    invoke-static {v3}, Lcom/motorola/messaging/mime/MmsContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "application/vnd.wap.mms-generic"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v3, v14}, Lcom/motorola/messaging/pdu/PduParser;->singlePartToMixed(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    if-nez v14, :cond_8

    .line 310
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const-string v15, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x84

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V

    .line 319
    .end local v2    # "contentType":[B
    .end local v3    # "ctTypeStr":Ljava/lang/String;
    :cond_9
    packed-switch v6, :pswitch_data_0

    .line 376
    const-string v14, "Parser doesn\'t support this message type in this version!"

    invoke-static {v14}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 377
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 314
    .restart local v2    # "contentType":[B
    .restart local v3    # "ctTypeStr":Ljava/lang/String;
    :cond_a
    const-string v14, "unknown mms content type!"

    invoke-static {v14}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 315
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 321
    .end local v2    # "contentType":[B
    .end local v3    # "ctTypeStr":Ljava/lang/String;
    :pswitch_0
    new-instance v13, Lcom/motorola/messaging/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v13, v14, v15}, Lcom/motorola/messaging/pdu/SendReq;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V

    .local v13, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    move-object v11, v13

    .line 322
    goto/16 :goto_0

    .line 324
    .end local v13    # "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    :pswitch_1
    new-instance v12, Lcom/motorola/messaging/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v12, v14}, Lcom/motorola/messaging/pdu/SendConf;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v12, "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    move-object v11, v12

    .line 325
    goto/16 :goto_0

    .line 327
    .end local v12    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    :pswitch_2
    new-instance v7, Lcom/motorola/messaging/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v7, v14}, Lcom/motorola/messaging/pdu/NotificationInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v7, "notificationInd":Lcom/motorola/messaging/pdu/NotificationInd;
    move-object v11, v7

    .line 329
    goto/16 :goto_0

    .line 331
    .end local v7    # "notificationInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :pswitch_3
    new-instance v8, Lcom/motorola/messaging/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v8, v14}, Lcom/motorola/messaging/pdu/NotifyRespInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v8, "notifyRespInd":Lcom/motorola/messaging/pdu/NotifyRespInd;
    move-object v11, v8

    .line 333
    goto/16 :goto_0

    .line 335
    .end local v8    # "notifyRespInd":Lcom/motorola/messaging/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v11, Lcom/motorola/messaging/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v11, v14, v15}, Lcom/motorola/messaging/pdu/RetrieveConf;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V

    .line 338
    .local v11, "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    invoke-virtual {v11}, Lcom/motorola/messaging/pdu/RetrieveConf;->getContentType()[B

    move-result-object v2

    .line 339
    .restart local v2    # "contentType":[B
    if-nez v2, :cond_b

    .line 340
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 342
    :cond_b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 343
    .restart local v3    # "ctTypeStr":Ljava/lang/String;
    const-string v14, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "application/vnd.wap.multipart.related"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 350
    const-string v14, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v5

    .line 354
    .local v5, "firstPart":Lcom/motorola/messaging/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    invoke-virtual {v14}, Lcom/motorola/messaging/pdu/PduBody;->removeAll()V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mBody:Lcom/motorola/messaging/pdu/PduBody;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5}, Lcom/motorola/messaging/pdu/PduBody;->addPart(ILcom/motorola/messaging/pdu/PduPart;)V

    goto/16 :goto_0

    .line 358
    .end local v5    # "firstPart":Lcom/motorola/messaging/pdu/PduPart;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 360
    .end local v2    # "contentType":[B
    .end local v3    # "ctTypeStr":Ljava/lang/String;
    .end local v11    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :pswitch_5
    new-instance v4, Lcom/motorola/messaging/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v4, v14}, Lcom/motorola/messaging/pdu/DeliveryInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v4, "deliveryInd":Lcom/motorola/messaging/pdu/DeliveryInd;
    move-object v11, v4

    .line 362
    goto/16 :goto_0

    .line 364
    .end local v4    # "deliveryInd":Lcom/motorola/messaging/pdu/DeliveryInd;
    :pswitch_6
    new-instance v1, Lcom/motorola/messaging/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v1, v14}, Lcom/motorola/messaging/pdu/AcknowledgeInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v1, "acknowledgeInd":Lcom/motorola/messaging/pdu/AcknowledgeInd;
    move-object v11, v1

    .line 366
    goto/16 :goto_0

    .line 368
    .end local v1    # "acknowledgeInd":Lcom/motorola/messaging/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v9, Lcom/motorola/messaging/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v9, v14}, Lcom/motorola/messaging/pdu/ReadOrigInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v9, "readOrigInd":Lcom/motorola/messaging/pdu/ReadOrigInd;
    move-object v11, v9

    .line 370
    goto/16 :goto_0

    .line 372
    .end local v9    # "readOrigInd":Lcom/motorola/messaging/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v10, Lcom/motorola/messaging/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/pdu/PduParser;->mHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v10, v14}, Lcom/motorola/messaging/pdu/ReadRecInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .local v10, "readRecInd":Lcom/motorola/messaging/pdu/ReadRecInd;
    move-object v11, v10

    .line 374
    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduHeaders;
    .locals 31
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 388
    if-nez p1, :cond_1

    .line 389
    const/4 v11, 0x0

    .line 949
    :cond_0
    :goto_0
    return-object v11

    .line 392
    :cond_1
    const/4 v12, 0x1

    .line 393
    .local v12, "keepParsing":Z
    new-instance v11, Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/motorola/messaging/pdu/PduHeaders;-><init>()V

    .line 395
    .local v11, "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_0

    .line 396
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 397
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 399
    .local v10, "headerField":I
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v10, v0, :cond_3

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-gt v10, v0, :cond_3

    .line 400
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 401
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 402
    .local v4, "bVal":[B
    sget-boolean v27, Lcom/motorola/messaging/pdu/PduParser;->LOCAL_LOG:Z

    if-eqz v27, :cond_2

    .line 403
    const-string v27, "PduParser"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TextHeader: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    .end local v4    # "bVal":[B
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 944
    :pswitch_0
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 412
    .local v16, "messageType":I
    packed-switch v16, :pswitch_data_1

    .line 432
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 433
    :catch_0
    move-exception v6

    .line 434
    .local v6, "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 436
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 429
    .end local v6    # "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    :pswitch_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 437
    :catch_1
    move-exception v6

    .line 438
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 439
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 472
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 475
    .local v24, "value":I
    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 476
    :catch_2
    move-exception v6

    .line 477
    .local v6, "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 479
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 480
    .end local v6    # "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .line 481
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 482
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 493
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 494
    .local v24, "value":J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 495
    .end local v24    # "value":J
    :catch_4
    move-exception v6

    .line 496
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 497
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 508
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 509
    .restart local v24    # "value":J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 510
    .end local v24    # "value":J
    :catch_5
    move-exception v6

    .line 511
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 512
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 538
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 539
    .local v24, "value":[B
    if-eqz v24, :cond_2

    .line 541
    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 542
    :catch_6
    move-exception v6

    .line 543
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 544
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .line 545
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 546
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 562
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v24

    .line 564
    .local v24, "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 566
    :try_start_5
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 567
    :catch_8
    move-exception v6

    .line 568
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 569
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 571
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 582
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v24

    .line 584
    .restart local v24    # "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 585
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 586
    .local v3, "address":[B
    if-eqz v3, :cond_5

    .line 587
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 588
    .local v20, "str":Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 589
    .local v7, "endIndex":I
    if-lez v7, :cond_4

    .line 590
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 593
    :cond_4
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 601
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->appendEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 602
    :catch_a
    move-exception v6

    .line 603
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "endIndex":I
    .restart local v20    # "str":Ljava/lang/String;
    :catch_b
    move-exception v6

    .line 595
    .restart local v6    # "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 596
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 604
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :catch_c
    move-exception v6

    .line 605
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 606
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 621
    .end local v3    # "address":[B
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_9
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 633
    .local v23, "token":I
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_f

    move-result-wide v21

    .line 638
    .local v21, "timeValue":J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 645
    :cond_6
    :try_start_a
    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_1

    .line 646
    :catch_d
    move-exception v6

    .line 647
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 648
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 622
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "timeValue":J
    .end local v23    # "token":I
    :catch_e
    move-exception v6

    .line 623
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 624
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 634
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v23    # "token":I
    :catch_f
    move-exception v6

    .line 635
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 636
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 658
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v23    # "token":I
    :pswitch_a
    const/4 v8, 0x0

    .line 662
    .local v8, "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :try_start_b
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_11

    .line 669
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 672
    .local v9, "fromToken":I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v9, :cond_9

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v8

    .line 675
    if-eqz v8, :cond_8

    .line 676
    invoke-virtual {v8}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 677
    .restart local v3    # "address":[B
    if-eqz v3, :cond_8

    .line 678
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 679
    .restart local v20    # "str":Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 680
    .restart local v7    # "endIndex":I
    if-lez v7, :cond_7

    .line 681
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 684
    :cond_7
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_12

    .line 702
    .end local v3    # "address":[B
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_8
    :goto_2
    const/16 v27, 0x89

    :try_start_d
    move/from16 v0, v27

    invoke-virtual {v11, v8, v0}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 703
    :catch_10
    move-exception v6

    .line 704
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 663
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "fromToken":I
    :catch_11
    move-exception v6

    .line 664
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 665
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 685
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "address":[B
    .restart local v7    # "endIndex":I
    .restart local v9    # "fromToken":I
    .restart local v20    # "str":Ljava/lang/String;
    :catch_12
    move-exception v6

    .line 686
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 687
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 693
    .end local v3    # "address":[B
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_9
    :try_start_e
    new-instance v8, Lcom/motorola/messaging/pdu/EncodedStringValue;

    .end local v8    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13

    .restart local v8    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    goto :goto_2

    .line 695
    .end local v8    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :catch_13
    move-exception v6

    .line 696
    .restart local v6    # "e":Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 697
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 705
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :catch_14
    move-exception v6

    .line 706
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 707
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 714
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v9    # "fromToken":I
    :pswitch_b
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 715
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 717
    .local v14, "messageClass":I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v14, v0, :cond_d

    .line 720
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v14, :cond_a

    .line 721
    :try_start_f
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_16

    goto/16 :goto_1

    .line 737
    :catch_15
    move-exception v6

    .line 738
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 724
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_a
    const/16 v27, 0x81

    move/from16 v0, v27

    if-ne v0, v14, :cond_b

    .line 725
    :try_start_10
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 739
    :catch_16
    move-exception v6

    .line 740
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 741
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 728
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_b
    const/16 v27, 0x82

    move/from16 v0, v27

    if-ne v0, v14, :cond_c

    .line 729
    :try_start_11
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 732
    :cond_c
    const/16 v27, 0x83

    move/from16 v0, v27

    if-ne v0, v14, :cond_2

    .line 733
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_16

    goto/16 :goto_1

    .line 745
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 746
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 747
    .local v15, "messageClassString":[B
    if-eqz v15, :cond_2

    .line 749
    const/16 v27, 0x8a

    :try_start_12
    move/from16 v0, v27

    invoke-virtual {v11, v15, v0}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_18

    goto/16 :goto_1

    .line 750
    :catch_17
    move-exception v6

    .line 751
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 752
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v6

    .line 753
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 754
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 762
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "messageClass":I
    .end local v15    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 765
    .local v26, "version":I
    const/16 v27, 0x8d

    :try_start_13
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V
    :try_end_13
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1a

    goto/16 :goto_1

    .line 766
    :catch_19
    move-exception v6

    .line 767
    .local v6, "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 769
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 770
    .end local v6    # "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    :catch_1a
    move-exception v6

    .line 771
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 772
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 783
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "version":I
    :pswitch_d
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    .line 791
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1d

    .line 798
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v19

    .line 800
    .local v19, "previouslySentBy":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v19, :cond_2

    .line 802
    const/16 v27, 0xa0

    :try_start_16
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 804
    :catch_1b
    move-exception v6

    .line 805
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 784
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "previouslySentBy":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :catch_1c
    move-exception v6

    .line 785
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 786
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 792
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v6

    .line 793
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 794
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 806
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "previouslySentBy":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :catch_1e
    move-exception v6

    .line 807
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 808
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 820
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "previouslySentBy":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_e
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 828
    :try_start_18
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    .line 836
    :try_start_19
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 837
    .local v17, "perviouslySentDate":J
    const/16 v27, 0xa1

    move-wide/from16 v0, v17

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1f

    goto/16 :goto_1

    .line 839
    .end local v17    # "perviouslySentDate":J
    :catch_1f
    move-exception v6

    .line 840
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 841
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 821
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v6

    .line 822
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 823
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 829
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_21
    move-exception v6

    .line 830
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 831
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 856
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    :try_start_1a
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_22

    .line 863
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 866
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 857
    :catch_22
    move-exception v6

    .line 858
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 859
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 881
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_10
    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_24

    .line 888
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 892
    :try_start_1c
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_23

    goto/16 :goto_1

    .line 893
    :catch_23
    move-exception v6

    .line 894
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 895
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 882
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_24
    move-exception v6

    .line 883
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "exceeded length!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 884
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 904
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 912
    :pswitch_12
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/motorola/messaging/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 917
    .local v5, "contentType":[B
    if-eqz v5, :cond_e

    .line 919
    const/16 v27, 0x84

    :try_start_1d
    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_26

    .line 929
    :cond_e
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/motorola/messaging/pdu/PduParser;->mStartParam:[B

    .line 932
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/motorola/messaging/pdu/PduParser;->mTypeParam:[B

    .line 934
    sput-object v13, Lcom/motorola/messaging/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    .line 936
    const/4 v12, 0x0

    .line 937
    goto/16 :goto_1

    .line 920
    :catch_25
    move-exception v6

    .line 921
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 922
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_26
    move-exception v6

    .line 923
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/motorola/messaging/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 924
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
