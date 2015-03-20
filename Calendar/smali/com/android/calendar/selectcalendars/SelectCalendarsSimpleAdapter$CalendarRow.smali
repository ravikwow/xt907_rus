.class Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
.super Ljava/lang/Object;
.source "SelectCalendarsSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarRow"
.end annotation


# instance fields
.field accountType:Ljava/lang/String;

.field color:I

.field displayName:Ljava/lang/String;

.field id:J

.field ownerAccount:Ljava/lang/String;

.field selected:Z

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .param p2, "x1"    # Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;)V

    return-void
.end method
