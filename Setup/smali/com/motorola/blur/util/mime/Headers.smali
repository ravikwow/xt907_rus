.class public Lcom/motorola/blur/util/mime/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field private static final HEADER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

.field private mContentType:Lcom/motorola/blur/util/mime/ContentType;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/util/mime/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "([^:]+): ?(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/Headers;->HEADER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private getAddressListValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/AddressList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/blur/util/mime/AddressList;->parse(Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v1

    return-object v1
.end method

.method private getAddressValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/blur/util/mime/AddressList;->parseAddress(Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    return-object v1
.end method

.method private getDateValue(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 305
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 306
    .local v0, "pos":I
    if-lez v0, :cond_0

    .line 307
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_0
    invoke-static {v1}, Lcom/motorola/blur/util/mime/DateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 311
    .end local v0    # "pos":I
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getStringValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unquote"    # Z

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/motorola/blur/util/mime/Headers;->getHeader(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Header;

    move-result-object v0

    .line 281
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "value":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 284
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->unquoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Lcom/motorola/blur/util/mime/Header;)V
    .locals 1
    .param p1, "header"    # Lcom/motorola/blur/util/mime/Header;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public addRawHeaderLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v4, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/blur/util/mime/Header;

    move-object v1, v4

    .line 59
    .local v1, "header":Lcom/motorola/blur/util/mime/Header;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 61
    .local v0, "c":C
    if-eqz v1, :cond_3

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    .line 63
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/util/mime/NameValuePair;->setValue(Ljava/lang/String;)V

    .line 77
    .end local v0    # "c":C
    :cond_1
    :goto_1
    return-void

    .line 58
    .end local v1    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .restart local v0    # "c":C
    .restart local v1    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_3
    new-instance v1, Lcom/motorola/blur/util/mime/Header;

    .end local v1    # "header":Lcom/motorola/blur/util/mime/Header;
    invoke-direct {v1}, Lcom/motorola/blur/util/mime/Header;-><init>()V

    .line 66
    .restart local v1    # "header":Lcom/motorola/blur/util/mime/Header;
    sget-object v4, Lcom/motorola/blur/util/mime/Headers;->HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 67
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/util/mime/NameValuePair;->setName(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/motorola/blur/util/mime/NameValuePair;->setValue(Ljava/lang/String;)V

    .line 74
    .end local v3    # "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/Headers;->addHeader(Lcom/motorola/blur/util/mime/Header;)V

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v1, p1}, Lcom/motorola/blur/util/mime/NameValuePair;->setName(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/util/mime/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAttachementFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Headers;->getContentDisposition()Lcom/motorola/blur/util/mime/ContentDisposition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/ContentDisposition;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Headers;->getContentType()Lcom/motorola/blur/util/mime/ContentType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    return-object v0
.end method

.method public getBcc()Lcom/motorola/blur/util/mime/AddressList;
    .locals 1

    .prologue
    .line 218
    const-string v0, "Bcc"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressListValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lcom/motorola/blur/util/mime/AddressList;
    .locals 1

    .prologue
    .line 214
    const-string v0, "Cc"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressListValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "charset":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Headers;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "transferEncoding":Ljava/lang/String;
    const-string v2, "7bit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string v0, "US-ASCII"

    .line 106
    .end local v1    # "transferEncoding":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getContentDisposition()Lcom/motorola/blur/util/mime/ContentDisposition;
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    if-nez v1, :cond_0

    .line 111
    const-string v1, "Content-Disposition"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "disposition":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lcom/motorola/blur/util/mime/ContentDisposition;

    invoke-direct {v1, v0}, Lcom/motorola/blur/util/mime/ContentDisposition;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    .line 116
    .end local v0    # "disposition":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    return-object v1
.end method

.method public getContentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const-string v0, "Content-ID"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const-string v2, "Content-Location"

    invoke-virtual {p0, v2}, Lcom/motorola/blur/util/mime/Headers;->getHeader(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Header;

    move-result-object v0

    .line 167
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/motorola/blur/util/mime/MimeCodec;->unfold(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->skipCommentsForContentLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lcom/motorola/blur/util/mime/ContentType;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    if-nez v1, :cond_0

    .line 133
    const-string v1, "Content-Type"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Lcom/motorola/blur/util/mime/ContentType;

    invoke-direct {v1, v0}, Lcom/motorola/blur/util/mime/ContentType;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    .line 138
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    return-object v1
.end method

.method public getFrom()Lcom/motorola/blur/util/mime/Address;
    .locals 1

    .prologue
    .line 198
    const-string v0, "From"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v2, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Header;

    .line 263
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    .end local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const-string v0, "In-Reply-To"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    const-string v0, "Message-ID"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 222
    const/4 v0, 0x3

    .line 223
    .local v0, "intPriority":I
    const-string v2, "X-Priority"

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "priority":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 226
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const-string v2, "Priority"

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_3

    .line 233
    const-string v2, "urgent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    const-string v2, "non-urgent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v0, 0x5

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "Importance"

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 240
    const-string v2, "High"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_4
    const-string v2, "low"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v0, 0x5

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getReceived()Ljava/util/Date;
    .locals 1

    .prologue
    .line 186
    const-string v0, "Received"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getDateValue(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const-string v0, "References"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()Lcom/motorola/blur/util/mime/Address;
    .locals 1

    .prologue
    .line 206
    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/motorola/blur/util/mime/Address;
    .locals 1

    .prologue
    .line 202
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSent()Ljava/util/Date;
    .locals 1

    .prologue
    .line 190
    const-string v0, "Date"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getDateValue(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    const-string v0, "Subject"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Lcom/motorola/blur/util/mime/AddressList;
    .locals 1

    .prologue
    .line 210
    const-string v0, "To"

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/Headers;->getAddressListValue(Ljava/lang/String;)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    const-string v0, "Content-Transfer-Encoding"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/util/mime/Headers;->getStringValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAttachement()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Headers;->getContentDisposition()Lcom/motorola/blur/util/mime/ContentDisposition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentDisposition;->isAttachement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 252
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 253
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Header;

    .line 254
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    .end local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_0
    return-void

    .line 252
    .restart local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setContentDisposition(Lcom/motorola/blur/util/mime/ContentDisposition;)V
    .locals 4
    .param p1, "contentDisposition"    # Lcom/motorola/blur/util/mime/ContentDisposition;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentDisposition:Lcom/motorola/blur/util/mime/ContentDisposition;

    .line 121
    if-nez p1, :cond_1

    .line 122
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/Headers;->getHeader(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Header;

    move-result-object v0

    .line 123
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    .end local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v1, Lcom/motorola/blur/util/mime/Header;

    const-string v2, "Content-Disposition"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/blur/util/mime/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/Headers;->setHeader(Lcom/motorola/blur/util/mime/Header;)V

    goto :goto_0
.end method

.method public setContentType(Lcom/motorola/blur/util/mime/ContentType;)V
    .locals 4
    .param p1, "contentType"    # Lcom/motorola/blur/util/mime/ContentType;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Headers;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    .line 143
    if-nez p1, :cond_1

    .line 144
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/Headers;->getHeader(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Header;

    move-result-object v0

    .line 145
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    .end local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v1, Lcom/motorola/blur/util/mime/Header;

    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/blur/util/mime/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/Headers;->setHeader(Lcom/motorola/blur/util/mime/Header;)V

    goto :goto_0
.end method

.method public setHeader(Lcom/motorola/blur/util/mime/Header;)V
    .locals 2
    .param p1, "header"    # Lcom/motorola/blur/util/mime/Header;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 50
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Headers["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/util/mime/Headers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
