.class public abstract Lcom/motorola/messaging/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addInterpreter(Lcom/motorola/messaging/vcard/VCardInterpreter;)V
.end method

.method public abstract parse(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/messaging/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public parse(Ljava/io/InputStream;Lcom/motorola/messaging/vcard/VCardInterpreter;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "interpreter"    # Lcom/motorola/messaging/vcard/VCardInterpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/messaging/vcard/exception/VCardException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p2}, Lcom/motorola/messaging/vcard/VCardParser;->addInterpreter(Lcom/motorola/messaging/vcard/VCardInterpreter;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 85
    return-void
.end method
