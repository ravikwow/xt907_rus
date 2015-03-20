.class Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarAccountInfo"
.end annotation


# instance fields
.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 2785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2786
    iput-wide p1, p0, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mId:J

    .line 2787
    iput-object p3, p0, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mName:Ljava/lang/String;

    .line 2788
    iput-object p4, p0, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mType:Ljava/lang/String;

    .line 2789
    return-void
.end method
