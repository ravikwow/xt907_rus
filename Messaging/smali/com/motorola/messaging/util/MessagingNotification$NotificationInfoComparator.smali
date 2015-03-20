.class final Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/util/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/util/MessagingNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/util/MessagingNotification$1;

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;)I
    .locals 4
    .param p1, "info1"    # Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    .param p2, "info2"    # Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .prologue
    .line 690
    invoke-virtual {p2}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 685
    check-cast p1, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;->compare(Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;)I

    move-result v0

    return v0
.end method
