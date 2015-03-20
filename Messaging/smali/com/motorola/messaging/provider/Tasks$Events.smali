.class public final Lcom/motorola/messaging/provider/Tasks$Events;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/provider/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static OFFSET_TIME_IN_MILLSECONDS:J

.field public static final TAGGED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "content://com.motorola.blur.tasks.provider/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/provider/Tasks$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 304
    const-string v0, "content://com.motorola.blur.tasks.provider/tagged_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/provider/Tasks$Events;->TAGGED_CONTENT_URI:Landroid/net/Uri;

    .line 367
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/motorola/messaging/provider/Tasks$Events;->OFFSET_TIME_IN_MILLSECONDS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
