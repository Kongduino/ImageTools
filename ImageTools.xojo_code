#tag Module
Protected Module ImageTools
	#tag Method, Flags = &h0
		Sub Brightness(extends pix as picture,variance as integer)
		  // Adjusts brightness via .Transform =  = > variance (positive or negative)
		  // checks for negative values and values above 255.
		  
		  If variance = 0 Then Return
		  
		  Dim i, n As Integer
		  Dim map(255) As Integer
		  Dim srf As RGBSurface
		  
		  srf = pix.RGBSurface
		  For i = 0 To 255
		    n = i+variance
		    if n<0 Then
		      n = 0
		    ElseIf n>255 Then
		      n = 255
		    End If
		    map(i) = n
		    
		  Next
		  
		  srf.Transform map
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPix(extends pix2 as picture, pix as picture)
		  // Draws pix into pix2
		  // Not really useful. Just an exercice in unrolling loops
		  // Check also the variant with partial draw
		  Dim x, y, i, j, n As Integer
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim srf As RGBSurface
		  Dim srf2 As RGBSurface
		  
		  x = pix.Width
		  y = pix.Height
		  srf = pix.RGBSurface
		  srf2 = pix2.RGBSurface
		  
		  For i = 0 To y Step 8
		    i1 = i+1
		    i2 = i+2
		    i3 = i+3
		    i4 = i+4
		    i5 = i+5
		    i6 = i+6
		    i7 = i+7
		    
		    For j = 0 To x Step 8
		      n = j
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, i)
		      srf2.Pixel(n, i1) = srf.Pixel(n, i1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, i2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, i3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, i4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, i5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, i6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, i7)
		      
		    Next
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPix(extends pix2 as picture, pix as picture,X as integer, Y as integer)
		  // Draws a part of pix into pix2 =  = > x = left, y = top (width = width of pix; height = height of pix)
		  // Not really useful. Just an exercice in unrolling loops
		  
		  Dim i, j, n As Integer
		  Dim W, H As Integer
		  Dim xx, yy As Integer
		  Dim i0, i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim ii0, ii1, ii2, ii3, ii4, ii5, ii6, ii7 As Integer
		  Dim j0, j1, j2, j3, j4, j5, j6, j7 As Integer
		  Dim srf As RGBSurface
		  Dim srf2 As RGBSurface
		  
		  srf = pix.RGBSurface
		  srf2 = pix2.RGBSurface
		  W = pix2.Width
		  H = pix2.Height
		  yy = Y+H-1
		  yy = yy+(H mod 8)
		  xx = X+W-1
		  xx = xx+(W mod 8)
		  
		  i0 = 0
		  i1 = 1
		  i2 = 2
		  i3 = 3
		  i4 = 4
		  i5 = 5
		  i6 = 6
		  i7 = 7
		  
		  For i = Y To yy Step 8
		    j0 = 0
		    j1 = 1
		    j2 = 2
		    j3 = 3
		    j4 = 4
		    j5 = 5
		    j6 = 6
		    j7 = 7
		    
		    ii0 = i
		    ii1 = ii0+1
		    ii2 = ii0+2
		    ii3 = ii0+3
		    ii4 = ii0+4
		    ii5 = ii0+5
		    ii6 = ii0+6
		    ii7 = ii0+7
		    
		    For j = X To xx Step 8
		      n = j
		      srf2.Pixel(j0, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j0, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j0, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j0, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j0, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j0, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j0, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j0, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j1, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j1, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j1, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j1, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j1, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j1, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j1, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j1, i7) = srf.Pixel(n, ii7)
		      
		      
		      n = n+1
		      srf2.Pixel(j2, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j2, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j2, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j2, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j2, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j2, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j2, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j2, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j3, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j3, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j3, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j3, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j3, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j3, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j3, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j3, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j4, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j4, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j4, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j4, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j4, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j4, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j4, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j4, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j5, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j5, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j5, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j5, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j5, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j5, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j5, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j5, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j6, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j6, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j6, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j6, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j6, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j6, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j6, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j6, i7) = srf.Pixel(n, ii7)
		      
		      n = n+1
		      srf2.Pixel(j7, i0) = srf.Pixel(n, ii0)
		      srf2.Pixel(j7, i1) = srf.Pixel(n, ii1)
		      srf2.Pixel(j7, i2) = srf.Pixel(n, ii2)
		      srf2.Pixel(j7, i3) = srf.Pixel(n, ii3)
		      srf2.Pixel(j7, i4) = srf.Pixel(n, ii4)
		      srf2.Pixel(j7, i5) = srf.Pixel(n, ii5)
		      srf2.Pixel(j7, i6) = srf.Pixel(n, ii6)
		      srf2.Pixel(j7, i7) = srf.Pixel(n, ii7)
		      
		      j0 = j0+8
		      j1 = j0+1
		      j2 = j0+2
		      j3 = j0+3
		      j4 = j0+4
		      j5 = j0+5
		      j6 = j0+6
		      j7 = j0+7
		      
		    Next
		    i0 = i0+8
		    i1 = i0+1
		    i2 = i0+2
		    i3 = i0+3
		    i4 = i0+4
		    i5 = i0+5
		    i6 = i0+6
		    i7 = i0+7
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FourGreys(extends pix as picture)
		  // Converts the image to 4 levels of grayscale
		  // This is the plainest method possible: average out r/g/b...
		  // for another, slightly more refined method, see grayscale above.
		  // this version features loops only partly unrolled.
		  // see grayscale for fully unrolled loops.
		  
		  Dim rs1 As RGBSurface
		  Dim w, h, i, j, n As Integer
		  Dim k As UInt8
		  Dim c As color
		  
		  w = pix.Width
		  h = pix.Height
		  rs1 = pix.RGBSurface
		  
		  w = w-1
		  h = h-1
		  For j = 0 To h
		    For i = 0 To w Step 10
		      n = i
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = FourLevels(k)
		    Next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FourLevels(k As UInt8) As Color
		  If k > 192 Then Return &cffffff
		  If k > 128 Then Return &caaaaaa
		  If k > 64 Then Return &c555555
		  Return &c000000
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetBicubic(x as integer, y as integer, wd as integer, ht as integer, rs as RGBSurface) As color
		  // Used by scaleDouble and scaleDownByHalf
		  // gets the average colour for a square around a said point  at (x, y):
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +XXX+   +   +
		  // +   +YYY+   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  
		  // of course, if x = 0 or y = 0, we will use:
		  // Y = 0 =  = >
		  // +---+---+---+---+
		  // +   +XXX+   +   +
		  // +   +YYY+   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  
		  // or:
		  // Y = 0 =  = >
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +XXX+   +   +   +
		  // +YYY+   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  
		  // or:
		  // X = 0 & Y = 0 =  = >
		  // +---+---+---+---+
		  // +XXX+   +   +   +
		  // +YYY+   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  // +   +   +   +   +
		  // +   +   +   +   +
		  // +---+---+---+---+
		  
		  // same for points coming close To the end edge of the picture:
		  // we will make sure the 4x4 square stays within the picture.
		  
		  
		  Dim w, h As Integer
		  Dim c As color
		  Dim r, g, b As Integer
		  
		  // Unless the point is at 0 (x and/or y)
		  // the square starts at x-1, y-1
		  if x = 0 Then
		    w = 0
		  else
		    w = x-1
		  End If
		  
		  if y = 0 Then
		    h = 0
		  else
		    h = y-1
		  End If
		  
		  // Likewise, when x or y come close To en end of the picture
		  // bring back the origin of the square so that the full square is within the picture
		  if w>= (wd-2) Then
		    w = wd-3
		  End If
		  
		  if h>= (ht-2) Then
		    h = ht-3
		  End If
		  
		  // I could have done the following in a loop or two, but the interest is precisely To do it faster by unrolling the loops.
		  
		  // four times the following:
		  // add To red/green/blue the RGB values of the four points starting at the position computed above
		  // Then add one To the Y axis (h), and do it again.
		  c = rs.Pixel(w, h)
		  r = c.red
		  g = c.green
		  b = c.blue
		  
		  c = rs.Pixel(w+1, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+2, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+3, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  h = h+1
		  
		  c = rs.Pixel(w, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+1, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+2, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+3, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  h = h+1
		  
		  c = rs.Pixel(w, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+1, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+2, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+3, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  h = h+1
		  
		  c = rs.Pixel(w, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+1, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+2, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  c = rs.Pixel(w+3, h)
		  r = r+c.red
		  g = g+c.green
		  b = b+c.blue
		  
		  // calculate the averages
		  r = r\16
		  g = g\16
		  b = b\16
		  
		  Return Color.RGB(r, g, b)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Grayscale(extends pix as Picture)
		  // Converts the image To grayscale
		  // I am following a formula I found, I think, on IBM's web site...
		  // for another, slightly faster method, see greyscale below.
		  
		  Dim rs1 As RGBSurface
		  Dim w, h, i, j, k, n As Integer
		  Dim c As color
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  
		  w = pix.Width
		  h = pix.Height
		  rs1 = pix.RGBSurface
		  
		  w = w-1
		  h = h-1
		  For j = 0 To h Step 8
		    i1 = j+1
		    i2 = j+2
		    i3 = j+3
		    i4 = j+4
		    i5 = j+5
		    i6 = j+6
		    i7 = j+7
		    For i = 0 To w Step 8
		      n = i
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		      
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i1)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i1) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i2)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i2) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i3)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i3) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i4)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i4) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i5)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i5) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i6)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i6) = Color.RGB(k, k, k)
		      
		      c = rs1.Pixel(n, i7)
		      k = (C.Red * 0.275) + (C.Green * 0.58) + (C.Blue * 0.145)
		      rs1.Pixel(n, i7) = Color.RGB(k, k, k)
		    Next
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Greyscale(extends pix as picture)
		  // Converts the image To grayscale
		  // This is the plainest method possible: average out r/g/b...
		  // for another, slightly more refined method, see grayscale above.
		  // this version features loops only partly unrolled.
		  // see grayscale for fully unrolled loops.
		  
		  Dim rs1 As RGBSurface
		  Dim w, h, i, j, k, n As Integer
		  Dim c As color
		  
		  w = pix.Width
		  h = pix.Height
		  rs1 = pix.RGBSurface
		  
		  w = w-1
		  h = h-1
		  For j = 0 To h
		    For i = 0 To w Step 10
		      n = i
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		      n = n+1
		      c = rs1.Pixel(n, j)
		      k = (c.red+c.green+c.blue)\3
		      rs1.Pixel(n, j) = Color.RGB(k, k, k)
		    Next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Hmirror(extends pix as picture)
		  // Horizontal mirror.
		  // see also vertical mirror
		  // Quite fast for pure RB code... If I may say so myself ;-)
		  
		  Dim p As Picture
		  Dim x, x2, xj, y, i, j, k As Integer
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim srf, srf2 As RGBSurface
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  x2 = x\2
		  x = x-1
		  y = y-1
		  p.graphics.DrawPicture pix, 0, 0
		  srf = p.RGBSurface
		  srf2 = pix.RGBSurface
		  
		  For i = 0 To y Step 8
		    i1 = i+1
		    i2 = i1+1
		    i3 = i2+1
		    i4 = i3+1
		    i5 = i4+1
		    i6 = i5+1
		    i7 = i6+1
		    
		    For j = 0 To x2 Step 8
		      xj = x-j
		      srf2.Pixel(j, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(j, i)
		      srf2.Pixel(j, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(j, i1)
		      srf2.Pixel(j, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(j, i2)
		      srf2.Pixel(j, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(j, i3)
		      srf2.Pixel(j, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(j, i4)
		      srf2.Pixel(j, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(j, i5)
		      srf2.Pixel(j, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(j, i6)
		      srf2.Pixel(j, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(j, i7)
		      
		      k = j+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		      
		      k = k+1
		      xj = x-k
		      srf2.Pixel(k, i) = srf.Pixel(xj, i)
		      srf2.Pixel(xj, i) = srf.Pixel(k, i)
		      srf2.Pixel(k, i1) = srf.Pixel(xj, i1)
		      srf2.Pixel(xj, i1) = srf.Pixel(k, i1)
		      srf2.Pixel(k, i2) = srf.Pixel(xj, i2)
		      srf2.Pixel(xj, i2) = srf.Pixel(k, i2)
		      srf2.Pixel(k, i3) = srf.Pixel(xj, i3)
		      srf2.Pixel(xj, i3) = srf.Pixel(k, i3)
		      srf2.Pixel(k, i4) = srf.Pixel(xj, i4)
		      srf2.Pixel(xj, i4) = srf.Pixel(k, i4)
		      srf2.Pixel(k, i5) = srf.Pixel(xj, i5)
		      srf2.Pixel(xj, i5) = srf.Pixel(k, i5)
		      srf2.Pixel(k, i6) = srf.Pixel(xj, i6)
		      srf2.Pixel(xj, i6) = srf.Pixel(k, i6)
		      srf2.Pixel(k, i7) = srf.Pixel(xj, i7)
		      srf2.Pixel(xj, i7) = srf.Pixel(k, i7)
		    Next
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub invert(extends pix as picture)
		  // Inversion. each channel is set To 255-value.
		  
		  Dim x, y, i, j, n As Integer
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim c As color
		  Dim srf As RGBSurface
		  
		  x = pix.Width-1
		  y = pix.Height-1
		  srf = pix.RGBSurface
		  
		  For i = 0 To y Step 8
		    i1 = i+1
		    i2 = i+2
		    i3 = i+3
		    i4 = i+4
		    i5 = i+5
		    i6 = i+6
		    i7 = i+7
		    
		    For j = 0 To x Step 8
		      n = j
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      
		      n = n+1
		      c = srf.Pixel(n, i)
		      srf.Pixel(n, i) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i1)
		      srf.Pixel(n, i1) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i2)
		      srf.Pixel(n, i2) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i3)
		      srf.Pixel(n, i3) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i4)
		      srf.Pixel(n, i4) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i5)
		      srf.Pixel(n, i5) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i6)
		      srf.Pixel(n, i6) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		      c = srf.Pixel(n, i7)
		      srf.Pixel(n, i7) = Color.RGB(255-c.red, 255-c.green, 255-c.blue)
		    Next
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(pix as picture, w as integer, h as integer) As picture
		  // wrapper To.DrawPicture
		  // normally produces a good quality image
		  // but there have been complaints on Windows
		  // two ratios are computed To determine how much to resize the picture (non-square image)
		  // the highest ratio is used.
		  
		  Dim r1, r2 As Double
		  Dim x, y As Integer
		  Dim i, j As Integer
		  Dim p As Picture
		  
		  x = pix.Width
		  y = pix.Height
		  
		  r1 = x/w
		  r2 = y/h
		  
		  if r2>r1 Then
		    r1 = r2
		  End If
		  
		  i = x\r1
		  j = y\r1
		  
		  p = New Picture(i, j, 32)
		  p.Graphics.DrawPicture pix, 0, 0, i, j, 0, 0, x, y
		  Return p
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RGBvariation(extends pix as picture, v1 as integer, v2 as integer, v3 as integer)
		  // A variant of Brightness.
		  // instead of applying the same variance To the three channels, 
		  // separate values are passed for r/g/b
		  
		  Dim i, n As Integer
		  Dim vl1, vl2, vl3 As Integer
		  Dim r(255), g(255), b(255) As Integer
		  Dim srf As RGBSurface
		  
		  srf = pix.RGBSurface
		  vl1 = v1
		  vl2 = v2
		  vl3 = v3
		  For i = 0 To 255
		    n = i+vl1
		    if n<0 Then
		      n = 0
		    ElseIf n>255 Then
		      n = 255
		    End If
		    r(i) = n
		    
		    n = i+vl2
		    if n<0 Then
		      n = 0
		    ElseIf n>255 Then
		      n = 255
		    End If
		    g(i) = n
		    
		    n = i+vl3
		    if n<0 Then
		      n = 0
		    ElseIf n>255 Then
		      n = 255
		    End If
		    b(i) = n
		  Next
		  
		  srf.Transform r, g, b
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rotate180(extends pix as Picture)
		  // 180° rotation
		  // Quite fast for pure RB code... If I may say so myself ;-)
		  
		  Dim p, q As Picture
		  Dim x, y, i, j, n, xn As Integer
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim im, im1, im2, im3, im4, im5, im6, im7 As Integer
		  Dim srf, srf2 As RGBSurface
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  q = New Picture(x, y, 32)
		  x = x-1
		  y = y-1
		  p.graphics.DrawPicture pix, 0, 0
		  srf = p.RGBSurface
		  srf2 = pix.RGBSurface
		  
		  For i = 0 To y Step 8
		    i1 = i+1
		    i2 = i+2
		    i3 = i+3
		    i4 = i+4
		    i5 = i+5
		    i6 = i+6
		    i7 = i+7
		    
		    im = y-i
		    im1 = y-i1
		    im2 = y-i2
		    im3 = y-i3
		    im4 = y-i4
		    im5 = y-i5
		    im6 = y-i6
		    im7 = y-i7
		    
		    For j = 0 To x Step 8
		      n = j
		      xn = x-n
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		      
		      n = n+1
		      xn = xn-1
		      srf2.Pixel(n, i) = srf.Pixel(xn, im)
		      srf2.Pixel(n, i1) = srf.Pixel(xn, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(xn, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(xn, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(xn, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(xn, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(xn, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(xn, im7)
		    Next
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate90ccw(extends pix as picture) As picture
		  // 270° rotation, aka counter-clockwise
		  // Quite fast for pure RB code... If I may say so myself ;-)
		  // contrary To 180°, we have To return a new image:
		  // just working on pix will produced a truncated image
		  // since we can't resize pix now...
		  
		  Dim p, q As Picture
		  Dim x, y, i, j, n As Integer
		  Dim srf, srf2 As RGBSurface
		  Dim im, i1, i2, i3, i4, i5, i6, i7 As Integer
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  p.graphics.DrawPicture pix, 0, 0
		  q = New Picture(y, x, 32)
		  x = x-1
		  y = y-1
		  
		  srf = p.RGBSurface
		  srf2 = q.RGBSurface
		  
		  For j = 0 To y Step 8
		    For i = 0 To x Step 8
		      i1 = i+1
		      i2 = i+2
		      i3 = i+3
		      i4 = i+4
		      i5 = i+5
		      i6 = i+6
		      i7 = i+7
		      
		      n = j
		      im = j
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im+1
		      srf2.Pixel(im, x-i) = srf.Pixel(i, n)
		      srf2.Pixel(im, x-i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, x-i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, x-i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, x-i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, x-i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, x-i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, x-i7) = srf.Pixel(i7, n)
		    Next
		  Next
		  
		  Return q
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate90cw(extends pix as picture) As picture
		  // 90° rotation, aka clockwise
		  // Quite fast for pure RB code... If I may say so myself ;-)
		  // contrary To 180°, we have To return a new image:
		  // just working on pix will produced a truncated image
		  // since we can't resize pix now...
		  
		  Dim p, q As Picture
		  Dim x, y, i, j, n As Integer
		  Dim srf, srf2 As RGBSurface
		  Dim im, i1, i2, i3, i4, i5, i6, i7 As Integer
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  p.graphics.DrawPicture pix, 0, 0
		  q = New Picture(y, x, 32)
		  x = x-1
		  y = y-1
		  
		  srf = p.RGBSurface
		  srf2 = q.RGBSurface
		  
		  For j = 0 To y Step 8
		    For i = 0 To x Step 8
		      i1 = i+1
		      i2 = i+2
		      i3 = i+3
		      i4 = i+4
		      i5 = i+5
		      i6 = i+6
		      i7 = i+7
		      
		      n = j
		      im = y-j
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		      
		      n = n+1
		      im = im-1
		      srf2.Pixel(im, i) = srf.Pixel(i, n)
		      srf2.Pixel(im, i1) = srf.Pixel(i1, n)
		      srf2.Pixel(im, i2) = srf.Pixel(i2, n)
		      srf2.Pixel(im, i3) = srf.Pixel(i3, n)
		      srf2.Pixel(im, i4) = srf.Pixel(i4, n)
		      srf2.Pixel(im, i5) = srf.Pixel(i5, n)
		      srf2.Pixel(im, i6) = srf.Pixel(i6, n)
		      srf2.Pixel(im, i7) = srf.Pixel(i7, n)
		    Next
		  Next
		  
		  Return q
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleDouble(extends pix as picture) As picture
		  // using bicubic interpolation, the image is doubled.
		  // results are so-so..
		  Dim p, q As Picture
		  Dim x, y, i, j, n As Integer
		  Dim c As color
		  Dim srf, srf2 As RGBSurface
		  Dim i1, i2, i3, i4, i5, i6, i7, i8 As Integer
		  Dim px0, px1, px2, px3, px4, px5, px6, px7, px8, px9, px10, px11, px12, px13, px14, px15 As Integer
		  Dim py0, py1, py2, py3, py4, py5, py6, py7, py8, py9, py10, py11, py12, py13, py14, py15 As Integer
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  p.graphics.DrawPicture pix, 0, 0
		  q = New Picture(x*2, y*2, 32)
		  x = x-1
		  y = y-1
		  
		  srf = p.RGBSurface
		  srf2 = q.RGBSurface
		  px0 = 0
		  py0 = 0
		  
		  For j = 0 To y Step 8
		    if j>y Then
		      exit
		    End If
		    py0 = j*2
		    py1 = py0+1
		    py2 = py1+1
		    py3 = py2+1
		    py4 = py3+1
		    py5 = py4+1
		    py6 = py5+1
		    py7 = py6+1
		    py8 = py7+1
		    py9 = py8+1
		    py10 = py9+1
		    py11 = py10+1
		    py12 = py11+1
		    py13 = py12+1
		    py14 = py13+1
		    py15 = py14+1
		    
		    For i = 0 To x Step 8
		      if i>x Then
		        Exit
		      End If
		      i1 = i+1
		      i2 = i+2
		      i3 = i+3
		      i4 = i+4
		      i5 = i+5
		      i6 = i+6
		      i7 = i+7
		      i8 = i7+1
		      
		      px0 = i*2
		      px1 = px0+1
		      px2 = px1+1
		      px3 = px2+1
		      px4 = px3+1
		      px5 = px4+1
		      px6 = px5+1
		      px7 = px6+1
		      px8 = px7+1
		      px9 = px8+1
		      px10 = px9+1
		      px11 = px10+1
		      px12 = px11+1
		      px13 = px12+1
		      px14 = px13+1
		      px15 = px14+1
		      
		      n = j
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py0) = c
		      srf2.Pixel(px1, py0) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py1) = c
		      srf2.Pixel(px1, py1) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py0) = c
		      srf2.Pixel(px3, py0) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py1) = c
		      srf2.Pixel(px3, py1) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py0) = c
		      srf2.Pixel(px5, py0) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py1) = c
		      srf2.Pixel(px5, py1) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py0) = c
		      srf2.Pixel(px7, py0) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py1) = c
		      srf2.Pixel(px7, py1) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py0) = c
		      srf2.Pixel(px9, py0) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py1) = c
		      srf2.Pixel(px9, py1) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py0) = c
		      srf2.Pixel(px11, py0) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py1) = c
		      srf2.Pixel(px11, py1) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py0) = c
		      srf2.Pixel(px13, py0) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py1) = c
		      srf2.Pixel(px13, py1) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py0) = c
		      srf2.Pixel(px15, py0) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py1) = c
		      srf2.Pixel(px15, py1) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py2) = c
		      srf2.Pixel(px1, py2) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py3) = c
		      srf2.Pixel(px1, py3) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py2) = c
		      srf2.Pixel(px3, py2) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py3) = c
		      srf2.Pixel(px3, py3) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py2) = c
		      srf2.Pixel(px5, py2) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py3) = c
		      srf2.Pixel(px5, py3) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py2) = c
		      srf2.Pixel(px7, py2) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py3) = c
		      srf2.Pixel(px7, py3) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py2) = c
		      srf2.Pixel(px9, py2) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py3) = c
		      srf2.Pixel(px9, py3) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py2) = c
		      srf2.Pixel(px11, py2) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py3) = c
		      srf2.Pixel(px11, py3) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py2) = c
		      srf2.Pixel(px13, py2) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py3) = c
		      srf2.Pixel(px13, py3) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py2) = c
		      srf2.Pixel(px15, py2) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py3) = c
		      srf2.Pixel(px15, py3) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py4) = c
		      srf2.Pixel(px1, py4) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py5) = c
		      srf2.Pixel(px1, py5) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py4) = c
		      srf2.Pixel(px3, py4) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py5) = c
		      srf2.Pixel(px3, py5) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py4) = c
		      srf2.Pixel(px5, py4) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py5) = c
		      srf2.Pixel(px5, py5) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py4) = c
		      srf2.Pixel(px7, py4) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py5) = c
		      srf2.Pixel(px7, py5) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py4) = c
		      srf2.Pixel(px9, py4) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py5) = c
		      srf2.Pixel(px9, py5) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py4) = c
		      srf2.Pixel(px11, py4) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py5) = c
		      srf2.Pixel(px11, py5) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py4) = c
		      srf2.Pixel(px13, py4) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py5) = c
		      srf2.Pixel(px13, py5) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py4) = c
		      srf2.Pixel(px15, py4) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py5) = c
		      srf2.Pixel(px15, py5) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py6) = c
		      srf2.Pixel(px1, py6) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py7) = c
		      srf2.Pixel(px1, py7) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py6) = c
		      srf2.Pixel(px3, py6) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py7) = c
		      srf2.Pixel(px3, py7) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py6) = c
		      srf2.Pixel(px5, py6) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py7) = c
		      srf2.Pixel(px5, py7) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py6) = c
		      srf2.Pixel(px7, py6) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py7) = c
		      srf2.Pixel(px7, py7) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py6) = c
		      srf2.Pixel(px9, py6) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py7) = c
		      srf2.Pixel(px9, py7) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py6) = c
		      srf2.Pixel(px11, py6) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py7) = c
		      srf2.Pixel(px11, py7) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py6) = c
		      srf2.Pixel(px13, py6) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py7) = c
		      srf2.Pixel(px13, py7) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py6) = c
		      srf2.Pixel(px15, py6) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py7) = c
		      srf2.Pixel(px15, py7) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py8) = c
		      srf2.Pixel(px1, py8) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py9) = c
		      srf2.Pixel(px1, py9) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py8) = c
		      srf2.Pixel(px3, py8) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py9) = c
		      srf2.Pixel(px3, py9) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py8) = c
		      srf2.Pixel(px5, py8) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py9) = c
		      srf2.Pixel(px5, py9) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py8) = c
		      srf2.Pixel(px7, py8) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py9) = c
		      srf2.Pixel(px7, py9) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py8) = c
		      srf2.Pixel(px9, py8) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py9) = c
		      srf2.Pixel(px9, py9) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py8) = c
		      srf2.Pixel(px11, py8) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py9) = c
		      srf2.Pixel(px11, py9) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py8) = c
		      srf2.Pixel(px13, py8) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py9) = c
		      srf2.Pixel(px13, py9) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py8) = c
		      srf2.Pixel(px15, py8) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py9) = c
		      srf2.Pixel(px15, py9) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py10) = c
		      srf2.Pixel(px1, py10) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py11) = c
		      srf2.Pixel(px1, py11) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py10) = c
		      srf2.Pixel(px3, py10) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py11) = c
		      srf2.Pixel(px3, py11) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py10) = c
		      srf2.Pixel(px5, py10) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py11) = c
		      srf2.Pixel(px5, py11) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py10) = c
		      srf2.Pixel(px7, py10) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py11) = c
		      srf2.Pixel(px7, py11) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py10) = c
		      srf2.Pixel(px9, py10) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py11) = c
		      srf2.Pixel(px9, py11) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py10) = c
		      srf2.Pixel(px11, py10) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py11) = c
		      srf2.Pixel(px11, py11) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py10) = c
		      srf2.Pixel(px13, py10) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py11) = c
		      srf2.Pixel(px13, py11) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py10) = c
		      srf2.Pixel(px15, py10) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py11) = c
		      srf2.Pixel(px15, py11) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py12) = c
		      srf2.Pixel(px1, py12) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py13) = c
		      srf2.Pixel(px1, py13) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py12) = c
		      srf2.Pixel(px3, py12) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py13) = c
		      srf2.Pixel(px3, py13) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py12) = c
		      srf2.Pixel(px5, py12) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py13) = c
		      srf2.Pixel(px5, py13) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py12) = c
		      srf2.Pixel(px7, py12) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py13) = c
		      srf2.Pixel(px7, py13) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py12) = c
		      srf2.Pixel(px9, py12) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py13) = c
		      srf2.Pixel(px9, py13) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py12) = c
		      srf2.Pixel(px11, py12) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py13) = c
		      srf2.Pixel(px11, py13) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py12) = c
		      srf2.Pixel(px13, py12) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py13) = c
		      srf2.Pixel(px13, py13) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py12) = c
		      srf2.Pixel(px15, py12) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py13) = c
		      srf2.Pixel(px15, py13) = c
		      
		      n = n+1
		      c = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px0, py14) = c
		      srf2.Pixel(px1, py14) = c
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px0, py15) = c
		      srf2.Pixel(px1, py15) = c
		      
		      c = getBicubic(i1, n, x, y, srf)
		      srf2.Pixel(px2, py14) = c
		      srf2.Pixel(px3, py14) = c
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py15) = c
		      srf2.Pixel(px3, py15) = c
		      
		      c = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px4, py14) = c
		      srf2.Pixel(px5, py14) = c
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px4, py15) = c
		      srf2.Pixel(px5, py15) = c
		      
		      c = getBicubic(i3, n, x, y, srf)
		      srf2.Pixel(px6, py14) = c
		      srf2.Pixel(px7, py14) = c
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px6, py15) = c
		      srf2.Pixel(px7, py15) = c
		      
		      c = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px8, py14) = c
		      srf2.Pixel(px9, py14) = c
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px8, py15) = c
		      srf2.Pixel(px9, py15) = c
		      
		      c = getBicubic(i5, n, x, y, srf)
		      srf2.Pixel(px10, py14) = c
		      srf2.Pixel(px11, py14) = c
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px10, py15) = c
		      srf2.Pixel(px11, py15) = c
		      
		      c = getBicubic(i6, n, x, y, srf)
		      srf2.Pixel(px12, py14) = c
		      srf2.Pixel(px13, py14) = c
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px12, py15) = c
		      srf2.Pixel(px13, py15) = c
		      
		      c = getBicubic(i7, n, x, y, srf)
		      srf2.Pixel(px14, py14) = c
		      srf2.Pixel(px15, py14) = c
		      c = getBicubic(i8, n, x, y, srf)
		      srf2.Pixel(px14, py15) = c
		      srf2.Pixel(px15, py15) = c
		    Next
		  Next
		  
		  Return q
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleDownByHalf(extends pix as picture) As picture
		  // using bicubic interpolation, the image is scaled down to half (actually quarter: half height, half width).
		  // results are quite good, but a tad slow to my taste (1/4 second for a 640x480 on my Ti 17").
		  
		  Dim p, q As Picture
		  Dim x, y, i, j, n As Integer
		  Dim srf, srf2 As RGBSurface
		  Dim i2, i4, i6 As Integer
		  Dim px0, px1, px2, px3 As Integer
		  Dim py0, py1, py2, py3 As Integer
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  p.graphics.DrawPicture pix, 0, 0
		  q = New Picture(x\2, y\2, 32)
		  x = x-1
		  y = y-1
		  
		  srf = p.RGBSurface
		  srf2 = q.RGBSurface
		  px0 = 0
		  py0 = 0
		  
		  For j = 0 To y Step 8
		    if j>y Then
		      Exit
		    End If
		    py0 = j\2
		    py1 = py0+1
		    py2 = py1+1
		    py3 = py2+1
		    
		    For i = 0 To x Step 8
		      if i>x Then
		        exit
		      End If
		      i2 = i+2
		      i4 = i+4
		      i6 = i+6
		      px0 = i\2
		      px1 = px0+1
		      px2 = px1+1
		      px3 = px2+1
		      
		      n = j
		      srf2.Pixel(px0, py0) = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px1, py0) = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py0) = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px3, py0) = getBicubic(i6, n, x, y, srf)
		      
		      n = n+2
		      srf2.Pixel(px0, py1) = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px1, py1) = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py1) = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px3, py1) = getBicubic(i6, n, x, y, srf)
		      
		      n = n+2
		      srf2.Pixel(px0, py2) = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px1, py2) = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py2) = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px3, py2) = getBicubic(i6, n, x, y, srf)
		      
		      n = n+2
		      srf2.Pixel(px0, py3) = getBicubic(i, n, x, y, srf)
		      srf2.Pixel(px1, py3) = getBicubic(i2, n, x, y, srf)
		      srf2.Pixel(px2, py3) = getBicubic(i4, n, x, y, srf)
		      srf2.Pixel(px3, py3) = getBicubic(i6, n, x, y, srf)
		    Next
		  Next
		  
		  Return q
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SuppressBlue(extends pix As Picture)
		  // A very simple and powerful example of .Transform.
		  // The blue channel is wiped out.
		  // kinda impressive...
		  
		  Dim r(255), g(255), b(255), i As Integer
		  Dim rs As RGBSurface
		  
		  For i = 0 To 255
		    r(i) = i
		    g(i) = i
		    b(i) = 0
		  Next
		  rs = pix.RGBSurface
		  rs.Transform r, g, b
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SuppressGreen(extends pix As Picture)
		  // A very simple and powerful example of .Transform.
		  // The green channel is wiped out.
		  // kinda impressive...
		  
		  Dim r(255), g(255), b(255), i As Integer
		  Dim rs As RGBSurface
		  
		  For i = 0 To 255
		    r(i) = i
		    g(i) = 0
		    b(i) = i
		  Next
		  rs = pix.RGBSurface
		  rs.Transform r, g, b
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SuppressRed(extends pix As Picture)
		  // A very simple and powerful example of .Transform.
		  // The red channel is wiped out.
		  // kinda impressive...
		  
		  Dim r(255), g(255), b(255), i As Integer
		  Dim rs As RGBSurface
		  
		  For i = 0 To 255
		    r(i) = 0
		    g(i) = i
		    b(i) = i
		  Next
		  rs = pix.RGBSurface
		  rs.Transform r, g, b
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Vmirror(extends pix As Picture)
		  // Horizontal mirror.
		  // see also vertical mirror
		  // Quite fast for pure RB code... If I may say so myself ;-)
		  
		  Dim p As Picture
		  Dim x, y, i, j, n As Integer
		  Dim srf, srf2 As RGBSurface
		  Dim i1, i2, i3, i4, i5, i6, i7 As Integer
		  Dim im, im1, im2, im3, im4, im5, im6, im7 As Integer
		  
		  x = pix.Width
		  y = pix.Height
		  p = New Picture(x, y, 32)
		  x = x-1
		  y = y-1
		  p.graphics.DrawPicture pix, 0, 0
		  srf = p.RGBSurface
		  srf2 = pix.RGBSurface
		  
		  For i = 0 To y Step 8
		    i1 = i+1
		    i2 = i1+1
		    i3 = i2+1
		    i4 = i3+1
		    i5 = i4+1
		    i6 = i5+1
		    i7 = i6+1
		    
		    For j = 0 To x Step 8
		      im = y-i
		      im1 = im-1
		      im2 = im1-1
		      im3 = im2-1
		      im4 = im3-1
		      im5 = im4-1
		      im6 = im5-1
		      im7 = im6-1
		      
		      n = j
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		      n = n+1
		      srf2.Pixel(n, i) = srf.Pixel(n, im)
		      srf2.Pixel(n, i1) = srf.Pixel(n, im1)
		      srf2.Pixel(n, i2) = srf.Pixel(n, im2)
		      srf2.Pixel(n, i3) = srf.Pixel(n, im3)
		      srf2.Pixel(n, i4) = srf.Pixel(n, im4)
		      srf2.Pixel(n, i5) = srf.Pixel(n, im5)
		      srf2.Pixel(n, i6) = srf.Pixel(n, im6)
		      srf2.Pixel(n, i7) = srf.Pixel(n, im7)
		      
		    next
		  next
		  
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
