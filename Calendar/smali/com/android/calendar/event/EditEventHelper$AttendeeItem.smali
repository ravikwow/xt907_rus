.class public Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeItem"
.end annotation


# instance fields
.field public mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public mContactLookupUri:Landroid/net/Uri;

.field public mRemoved:Z

.field public mUpdateCounts:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "attendee"    # Lcom/android/calendar/CalendarEventModel$Attendee;
    .param p2, "badge"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 226
    iput-object p2, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void
.end method
