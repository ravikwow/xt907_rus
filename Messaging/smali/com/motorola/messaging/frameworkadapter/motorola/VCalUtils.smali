.class public Lcom/motorola/messaging/frameworkadapter/motorola/VCalUtils;
.super Ljava/lang/Object;
.source "VCalUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vCalV2ToV1(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->vCalV2ToV1(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
