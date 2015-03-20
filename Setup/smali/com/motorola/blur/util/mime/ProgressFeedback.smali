.class public interface abstract Lcom/motorola/blur/util/mime/ProgressFeedback;
.super Ljava/lang/Object;
.source "ProgressFeedback.java"


# static fields
.field public static final PROGRESS_TYPE_BYTECOUNT:I = 0x4

.field public static final PROGRESS_TYPE_HEARTBEAT:I = 0x3

.field public static final PROGRESS_TYPE_ITEMCOUNT:I = 0x5

.field public static final PROGRESS_TYPE_NONE:I = 0x2

.field public static final PROGRESS_TYPE_UNKNOWN:I = 0x1


# virtual methods
.method public abstract commit()V
.end method

.method public abstract getProgressCount()I
.end method

.method public abstract getProgressTotal()I
.end method

.method public abstract getProgressType()I
.end method

.method public abstract isCancelRequested()Z
.end method

.method public abstract setProgressCount(I)V
.end method

.method public abstract setProgressTotal(I)V
.end method

.method public abstract setProgressType(I)V
.end method
