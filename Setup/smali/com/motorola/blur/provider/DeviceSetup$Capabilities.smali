.class public final Lcom/motorola/blur/provider/DeviceSetup$Capabilities;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# static fields
.field public static final CAPABILITY_BLUR:I = 0x7

.field public static final CAPABILITY_CALENDAR:I = 0xc

.field public static final CAPABILITY_CALENDAR_NAME:Ljava/lang/String; = "calendar"

.field public static final CAPABILITY_CONTACTS:I = 0x5

.field public static final CAPABILITY_CONTACTS_NAME:Ljava/lang/String; = "contacts"

.field public static final CAPABILITY_EMAIL:I = 0x1

.field public static final CAPABILITY_EMAIL_IMAP:I = 0x3

.field public static final CAPABILITY_EMAIL_NAME:Ljava/lang/String; = "email"

.field public static final CAPABILITY_EMAIL_POP3:I = 0x2

.field public static final CAPABILITY_EMAIL_SMTP:I = 0x4

.field public static final CAPABILITY_FRIENDS:I = 0xb

.field public static final CAPABILITY_FRIEND_FEED:I = 0xa

.field public static final CAPABILITY_FRIEND_FEED_NAME:Ljava/lang/String; = "friendfeed"

.field public static final CAPABILITY_NONE:I = 0x0

.field public static final CAPABILITY_PICTURES:I = 0x6

.field public static final CAPABILITY_PICTURES_NAME:Ljava/lang/String; = "pictures"

.field public static final CAPABILITY_SOCIAL_MESSAGING:I = 0x9

.field public static final CAPABILITY_SOCIAL_MESSAGING_NAME:Ljava/lang/String; = "social_messaging"

.field public static final CAPABILITY_STATUS:I = 0x8

.field public static final CAPABILITY_STATUS_NAME:Ljava/lang/String; = "status"

.field public static final CAPABILITY_TASKS:I = 0xd

.field public static final CAPABILITY_TASKS_NAME:Ljava/lang/String; = "tasks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
