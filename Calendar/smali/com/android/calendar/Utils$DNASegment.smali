.class Lcom/android/calendar/Utils$DNASegment;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DNASegment"
.end annotation


# instance fields
.field color:I

.field day:I

.field endMinute:I

.field startMinute:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/Utils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/calendar/Utils$1;

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/calendar/Utils$DNASegment;-><init>()V

    return-void
.end method
